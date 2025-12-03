@interface ABSContactsDeltaSource
+ (int64_t)estimatedLogCountForAnchor:(id)anchor store:(id)store;
- (ABSContactsDeltaSource)initWithAnchor:(id)anchor keys:(id)keys store:(id)store lmaData:(id)data;
- (BOOL)_primeWithAnchor:(id)anchor andKeys:(id)keys;
- (BOOL)containsInterestingChanges;
- (double)_computeProgressMultiplier;
- (double)progress;
- (id)fetchJustOneContactWithThese:(id)these forThisIdentifier:(id)identifier;
- (void)_callAddReplace:(id)replace;
- (void)enumerateContactsAdd:(id)add remove:(id)remove lmaAdd:(id)lmaAdd;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDifferentMeCardEvent:(id)event;
- (void)visitLinkContactsEvent:(id)event;
- (void)visitPreferredContactForImageEvent:(id)event;
- (void)visitPreferredContactForNameEvent:(id)event;
- (void)visitUnlinkContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation ABSContactsDeltaSource

- (ABSContactsDeltaSource)initWithAnchor:(id)anchor keys:(id)keys store:(id)store lmaData:(id)data
{
  anchorCopy = anchor;
  keysCopy = keys;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = ABSContactsDeltaSource;
  v13 = [(ABSContactsSource *)&v17 initWithKeys:keysCopy store:store];
  p_isa = &v13->super.super.isa;
  if (v13)
  {
    if (![(ABSContactsDeltaSource *)v13 _primeWithAnchor:anchorCopy andKeys:keysCopy])
    {
      v15 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(p_isa + 12, data);
  }

  v15 = p_isa;
LABEL_6:

  return v15;
}

+ (int64_t)estimatedLogCountForAnchor:(id)anchor store:(id)store
{
  storeCopy = store;
  anchorCopy = anchor;
  v7 = objc_alloc_init(CNChangeHistoryFetchRequest);
  [v7 setStartingToken:anchorCopy];

  v19 = CNContactIdentifierKey;
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  [v7 setAdditionalContactKeyDescriptors:v8];

  [v7 setShouldUnifyResults:0];
  [v7 setMutableObjects:0];
  [v7 setIncludeGroupChanges:0];
  [v7 setIncludeLinkingChanges:1];
  abs_transactionSignature = [objc_opt_class() abs_transactionSignature];
  v18 = abs_transactionSignature;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  [v7 setExcludedTransactionAuthors:v10];

  v17 = 0;
  v11 = [storeCopy countForFetchRequest:v7 error:&v17];

  v12 = v17;
  if (v12)
  {
    v13 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003A29C(v12, v13);
    }

    integerValue = -1;
  }

  else
  {
    value = [v11 value];
    integerValue = [value integerValue];
  }

  return integerValue;
}

- (void)enumerateContactsAdd:(id)add remove:(id)remove lmaAdd:(id)lmaAdd
{
  addCopy = add;
  removeCopy = remove;
  lmaAddCopy = lmaAdd;
  [(ABSContactsDeltaSource *)self setAddReplaceBlock:addCopy];
  [(ABSContactsDeltaSource *)self setDeleteBlock:removeCopy];
  [(ABSContactsDeltaSource *)self setLmaDiffBlock:lmaAddCopy];
  [(ABSContactsDeltaSource *)self setKeepGoing:1];
  [(ABSContactsDeltaSource *)self setAddMods:0];
  [(ABSContactsDeltaSource *)self setDeletes:0];
  [(ABSContactsSource *)self gtLogger];
  v11 = getCTGreenTeaOsLogHandle();
  v12 = v11;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Reading contacts", buf, 2u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  changeLogEnumerator = [(ABSContactsDeltaSource *)self changeLogEnumerator];
  v14 = [changeLogEnumerator countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v27 != v16)
      {
        objc_enumerationMutation(changeLogEnumerator);
      }

      v18 = *(*(&v26 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      [v18 acceptEventVisitor:self];
      objc_autoreleasePoolPop(v19);
      [(ABSContactsDeltaSource *)self currentIndex];
      [(ABSContactsDeltaSource *)self setCurrentIndex:v20 + 1.0];
      if (![(ABSContactsDeltaSource *)self keepGoing])
      {
        break;
      }

      [(ABSContactsDeltaSource *)self currentIndex];
      [(ABSContactsDeltaSource *)self setCurrentIndex:v21 + 1.0];
      if (v15 == ++v17)
      {
        v15 = [changeLogEnumerator countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v15)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  [(ABSContactsDeltaSource *)self setChangeLogEnumerator:0];
  [(ABSContactsDeltaSource *)self setAddReplaceBlock:0];
  [(ABSContactsDeltaSource *)self setDeleteBlock:0];
  [(ABSContactsDeltaSource *)self setLmaDiffBlock:0];
  v22 = *(qword_100071D00 + 8);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    deletes = [(ABSContactsDeltaSource *)self deletes];
    addMods = [(ABSContactsDeltaSource *)self addMods];
    *buf = 67109376;
    v31 = deletes;
    v32 = 1024;
    v33 = addMods;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Changelog swept: %d deletes, %d addmods", buf, 0xEu);
  }
}

- (double)progress
{
  [(ABSContactsDeltaSource *)self currentIndex];
  v4 = v3;
  [(ABSContactsDeltaSource *)self progressMultiplier];
  result = v4 * v5;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (BOOL)_primeWithAnchor:(id)anchor andKeys:(id)keys
{
  anchorCopy = anchor;
  keysCopy = keys;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000183A4;
  v41 = sub_1000183B4;
  v42 = 0;
  v8 = objc_alloc_init(CNChangeHistoryFetchRequest);
  [v8 setStartingToken:anchorCopy];
  [v8 setAdditionalContactKeyDescriptors:0];
  [v8 setShouldUnifyResults:0];
  [v8 setMutableObjects:0];
  [v8 setIncludeGroupChanges:0];
  [v8 setIncludeLinkingChanges:1];
  if (keysCopy)
  {
    v9 = [keysCopy copy];
    [(ABSContactsSource *)self setKeysToFetch:v9];

    v10 = CNContactIdentifierKey;
  }

  else
  {
    v10 = CNContactIdentifierKey;
    v45 = CNContactIdentifierKey;
    v11 = [NSArray arrayWithObjects:&v45 count:1];
    [(ABSContactsSource *)self setKeysToFetch:v11];
  }

  v44 = v10;
  v12 = [NSArray arrayWithObjects:&v44 count:1];
  [v8 setAdditionalContactKeyDescriptors:v12];

  abs_transactionSignature = [objc_opt_class() abs_transactionSignature];
  v43[0] = abs_transactionSignature;
  v43[1] = @"com.apple.watch.contactsync";
  v14 = [NSArray arrayWithObjects:v43 count:2];
  [v8 setExcludedTransactionAuthors:v14];

  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_1000183BC;
  v33 = &unk_10005D2C0;
  v36 = &v37;
  selfCopy = self;
  v15 = v8;
  v35 = v15;
  v16 = sub_100004D58(&v30);
  if (v16)
  {
    v17 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003A314(v16, v17);
    }
  }

  else
  {
    value = [v38[5] value];
    objectEnumerator = [value objectEnumerator];
    [(ABSContactsDeltaSource *)self setChangeLogEnumerator:objectEnumerator];

    currentHistoryToken = [v38[5] currentHistoryToken];
    [(ABSContactsSource *)self setHistoryAnchor:currentHistoryToken];

    changeLogEnumerator = [(ABSContactsDeltaSource *)self changeLogEnumerator];
    LOBYTE(currentHistoryToken) = changeLogEnumerator == 0;

    if ((currentHistoryToken & 1) == 0)
    {
      changeLogEnumerator2 = [(ABSContactsDeltaSource *)self changeLogEnumerator];
      nextObject = [changeLogEnumerator2 nextObject];

      [nextObject acceptEventVisitor:self];
      if ([(ABSContactsDeltaSource *)self reset])
      {
        [(ABSContactsDeltaSource *)self _computeProgressMultiplier];
        [(ABSContactsDeltaSource *)self setProgressMultiplier:?];
      }

      else
      {
        value2 = [v38[5] value];
        objectEnumerator2 = [value2 objectEnumerator];
        [(ABSContactsDeltaSource *)self setChangeLogEnumerator:objectEnumerator2];
      }
    }

    lmaData = [(ABSContactsDeltaSource *)self lmaData];

    if (lmaData)
    {
      lmaDiffBlock = [(ABSContactsDeltaSource *)self lmaDiffBlock];
      lmaData2 = [(ABSContactsDeltaSource *)self lmaData];
      (lmaDiffBlock)[2](lmaDiffBlock, lmaData2);
    }
  }

  _Block_object_dispose(&v37, 8);
  return v16 == 0;
}

- (double)_computeProgressMultiplier
{
  v3 = [CNContactFetchRequest alloc];
  v13 = CNContactIdentifierKey;
  v4 = [NSArray arrayWithObjects:&v13 count:1];
  v5 = [v3 initWithKeysToFetch:v4];

  [v5 setUnifyResults:0];
  store = [(ABSContactsSource *)self store];
  v12 = 0;
  v7 = [store countForFetchRequest:v5 error:&v12];

  value = [v7 value];
  integerValue = [value integerValue];

  if (integerValue)
  {
    v10 = 1.0 / integerValue;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (BOOL)containsInterestingChanges
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000186D0;
  v6[3] = &unk_10005D2E8;
  v6[4] = &v7;
  v4[4] = &v7;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000186E8;
  v5[3] = &unk_10005D310;
  v5[4] = &v7;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018700;
  v4[3] = &unk_10005D338;
  [(ABSContactsDeltaSource *)self enumerateContactsAdd:v6 remove:v5 lmaAdd:v4];
  v2 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v2;
}

- (id)fetchJustOneContactWithThese:(id)these forThisIdentifier:(id)identifier
{
  theseCopy = these;
  identifierCopy = identifier;
  if (!theseCopy)
  {
    sub_10003A38C();
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000183A4;
  v28 = sub_1000183B4;
  v29 = 0;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x3032000000;
  v22[2] = sub_1000183A4;
  v22[3] = sub_1000183B4;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100018930;
  v15[3] = &unk_10005D388;
  v8 = theseCopy;
  v16 = v8;
  v9 = identifierCopy;
  v17 = v9;
  selfCopy = self;
  v19 = &v21;
  v20 = &v24;
  v10 = sub_100004D58(v15);
  v11 = v25[5];
  if (!v11)
  {
    v12 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10003A3F8(v9, v22, v12);
    }

    v11 = v25[5];
  }

  v13 = v11;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v24, 8);

  return v13;
}

- (void)_callAddReplace:(id)replace
{
  replaceCopy = replace;
  [(ABSContactsDeltaSource *)self setAddMods:[(ABSContactsDeltaSource *)self addMods]+ 1];
  v4 = replaceCopy;
  if (!replaceCopy)
  {
    sub_10003A488();
    v4 = 0;
  }

  identifier = [v4 identifier];

  if (!identifier)
  {
    sub_10003A4F4();
  }

  if ([replaceCopy isUnified])
  {
    sub_10003A560();
  }

  keysToFetch = [(ABSContactsSource *)self keysToFetch];
  identifier2 = [replaceCopy identifier];
  v8 = [(ABSContactsDeltaSource *)self fetchJustOneContactWithThese:keysToFetch forThisIdentifier:identifier2];

  addReplaceBlock = [(ABSContactsDeltaSource *)self addReplaceBlock];

  if (addReplaceBlock && v8)
  {
    addReplaceBlock2 = [(ABSContactsDeltaSource *)self addReplaceBlock];
    [(ABSContactsDeltaSource *)self setKeepGoing:(addReplaceBlock2)[2](addReplaceBlock2, v8)];
  }
}

- (void)visitAddContactEvent:(id)event
{
  contact = [event contact];
  [(ABSContactsDeltaSource *)self _callAddReplace:contact];
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  [(ABSContactsDeltaSource *)self setDeletes:[(ABSContactsDeltaSource *)self deletes]+ 1];
  deleteBlock = [(ABSContactsDeltaSource *)self deleteBlock];
  if (deleteBlock)
  {
    v5 = deleteBlock;
    contactIdentifier = [eventCopy contactIdentifier];

    if (contactIdentifier)
    {
      deleteBlock2 = [(ABSContactsDeltaSource *)self deleteBlock];
      contactIdentifier2 = [eventCopy contactIdentifier];
      [(ABSContactsDeltaSource *)self setKeepGoing:(deleteBlock2)[2](deleteBlock2, contactIdentifier2)];
    }
  }
}

- (void)visitUpdateContactEvent:(id)event
{
  contact = [event contact];
  [(ABSContactsDeltaSource *)self _callAddReplace:contact];
}

- (void)visitLinkContactsEvent:(id)event
{
  fromContact = [event fromContact];
  [(ABSContactsDeltaSource *)self _callAddReplace:fromContact];
}

- (void)visitUnlinkContactEvent:(id)event
{
  contact = [event contact];
  [(ABSContactsDeltaSource *)self _callAddReplace:contact];
}

- (void)visitPreferredContactForNameEvent:(id)event
{
  preferredContact = [event preferredContact];
  [(ABSContactsDeltaSource *)self _callAddReplace:preferredContact];
}

- (void)visitPreferredContactForImageEvent:(id)event
{
  preferredContact = [event preferredContact];
  [(ABSContactsDeltaSource *)self _callAddReplace:preferredContact];
}

- (void)visitDifferentMeCardEvent:(id)event
{
  eventCopy = event;
  addReplaceBlock = [(ABSContactsDeltaSource *)self addReplaceBlock];

  if (addReplaceBlock)
  {
    abort();
  }
}

@end