@interface ABSContactsDeltaSource
+ (int64_t)estimatedLogCountForAnchor:(id)a3 store:(id)a4;
- (ABSContactsDeltaSource)initWithAnchor:(id)a3 keys:(id)a4 store:(id)a5 lmaData:(id)a6;
- (BOOL)_primeWithAnchor:(id)a3 andKeys:(id)a4;
- (BOOL)containsInterestingChanges;
- (double)_computeProgressMultiplier;
- (double)progress;
- (id)fetchJustOneContactWithThese:(id)a3 forThisIdentifier:(id)a4;
- (void)_callAddReplace:(id)a3;
- (void)enumerateContactsAdd:(id)a3 remove:(id)a4 lmaAdd:(id)a5;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDifferentMeCardEvent:(id)a3;
- (void)visitLinkContactsEvent:(id)a3;
- (void)visitPreferredContactForImageEvent:(id)a3;
- (void)visitPreferredContactForNameEvent:(id)a3;
- (void)visitUnlinkContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation ABSContactsDeltaSource

- (ABSContactsDeltaSource)initWithAnchor:(id)a3 keys:(id)a4 store:(id)a5 lmaData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = ABSContactsDeltaSource;
  v13 = [(ABSContactsSource *)&v17 initWithKeys:v11 store:a5];
  p_isa = &v13->super.super.isa;
  if (v13)
  {
    if (![(ABSContactsDeltaSource *)v13 _primeWithAnchor:v10 andKeys:v11])
    {
      v15 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(p_isa + 12, a6);
  }

  v15 = p_isa;
LABEL_6:

  return v15;
}

+ (int64_t)estimatedLogCountForAnchor:(id)a3 store:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CNChangeHistoryFetchRequest);
  [v7 setStartingToken:v6];

  v19 = CNContactIdentifierKey;
  v8 = [NSArray arrayWithObjects:&v19 count:1];
  [v7 setAdditionalContactKeyDescriptors:v8];

  [v7 setShouldUnifyResults:0];
  [v7 setMutableObjects:0];
  [v7 setIncludeGroupChanges:0];
  [v7 setIncludeLinkingChanges:1];
  v9 = [objc_opt_class() abs_transactionSignature];
  v18 = v9;
  v10 = [NSArray arrayWithObjects:&v18 count:1];
  [v7 setExcludedTransactionAuthors:v10];

  v17 = 0;
  v11 = [v5 countForFetchRequest:v7 error:&v17];

  v12 = v17;
  if (v12)
  {
    v13 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10003A29C(v12, v13);
    }

    v14 = -1;
  }

  else
  {
    v15 = [v11 value];
    v14 = [v15 integerValue];
  }

  return v14;
}

- (void)enumerateContactsAdd:(id)a3 remove:(id)a4 lmaAdd:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(ABSContactsDeltaSource *)self setAddReplaceBlock:v8];
  [(ABSContactsDeltaSource *)self setDeleteBlock:v9];
  [(ABSContactsDeltaSource *)self setLmaDiffBlock:v10];
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
  v13 = [(ABSContactsDeltaSource *)self changeLogEnumerator];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
        objc_enumerationMutation(v13);
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
        v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
    v24 = [(ABSContactsDeltaSource *)self deletes];
    v25 = [(ABSContactsDeltaSource *)self addMods];
    *buf = 67109376;
    v31 = v24;
    v32 = 1024;
    v33 = v25;
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

- (BOOL)_primeWithAnchor:(id)a3 andKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000183A4;
  v41 = sub_1000183B4;
  v42 = 0;
  v8 = objc_alloc_init(CNChangeHistoryFetchRequest);
  [v8 setStartingToken:v6];
  [v8 setAdditionalContactKeyDescriptors:0];
  [v8 setShouldUnifyResults:0];
  [v8 setMutableObjects:0];
  [v8 setIncludeGroupChanges:0];
  [v8 setIncludeLinkingChanges:1];
  if (v7)
  {
    v9 = [v7 copy];
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

  v13 = [objc_opt_class() abs_transactionSignature];
  v43[0] = v13;
  v43[1] = @"com.apple.watch.contactsync";
  v14 = [NSArray arrayWithObjects:v43 count:2];
  [v8 setExcludedTransactionAuthors:v14];

  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_1000183BC;
  v33 = &unk_10005D2C0;
  v36 = &v37;
  v34 = self;
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
    v18 = [v38[5] value];
    v19 = [v18 objectEnumerator];
    [(ABSContactsDeltaSource *)self setChangeLogEnumerator:v19];

    v20 = [v38[5] currentHistoryToken];
    [(ABSContactsSource *)self setHistoryAnchor:v20];

    v21 = [(ABSContactsDeltaSource *)self changeLogEnumerator];
    LOBYTE(v20) = v21 == 0;

    if ((v20 & 1) == 0)
    {
      v22 = [(ABSContactsDeltaSource *)self changeLogEnumerator];
      v23 = [v22 nextObject];

      [v23 acceptEventVisitor:self];
      if ([(ABSContactsDeltaSource *)self reset])
      {
        [(ABSContactsDeltaSource *)self _computeProgressMultiplier];
        [(ABSContactsDeltaSource *)self setProgressMultiplier:?];
      }

      else
      {
        v24 = [v38[5] value];
        v25 = [v24 objectEnumerator];
        [(ABSContactsDeltaSource *)self setChangeLogEnumerator:v25];
      }
    }

    v26 = [(ABSContactsDeltaSource *)self lmaData];

    if (v26)
    {
      v27 = [(ABSContactsDeltaSource *)self lmaDiffBlock];
      v28 = [(ABSContactsDeltaSource *)self lmaData];
      (v27)[2](v27, v28);
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
  v6 = [(ABSContactsSource *)self store];
  v12 = 0;
  v7 = [v6 countForFetchRequest:v5 error:&v12];

  v8 = [v7 value];
  v9 = [v8 integerValue];

  if (v9)
  {
    v10 = 1.0 / v9;
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

- (id)fetchJustOneContactWithThese:(id)a3 forThisIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
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
  v8 = v6;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v18 = self;
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

- (void)_callAddReplace:(id)a3
{
  v11 = a3;
  [(ABSContactsDeltaSource *)self setAddMods:[(ABSContactsDeltaSource *)self addMods]+ 1];
  v4 = v11;
  if (!v11)
  {
    sub_10003A488();
    v4 = 0;
  }

  v5 = [v4 identifier];

  if (!v5)
  {
    sub_10003A4F4();
  }

  if ([v11 isUnified])
  {
    sub_10003A560();
  }

  v6 = [(ABSContactsSource *)self keysToFetch];
  v7 = [v11 identifier];
  v8 = [(ABSContactsDeltaSource *)self fetchJustOneContactWithThese:v6 forThisIdentifier:v7];

  v9 = [(ABSContactsDeltaSource *)self addReplaceBlock];

  if (v9 && v8)
  {
    v10 = [(ABSContactsDeltaSource *)self addReplaceBlock];
    [(ABSContactsDeltaSource *)self setKeepGoing:(v10)[2](v10, v8)];
  }
}

- (void)visitAddContactEvent:(id)a3
{
  v4 = [a3 contact];
  [(ABSContactsDeltaSource *)self _callAddReplace:v4];
}

- (void)visitDeleteContactEvent:(id)a3
{
  v9 = a3;
  [(ABSContactsDeltaSource *)self setDeletes:[(ABSContactsDeltaSource *)self deletes]+ 1];
  v4 = [(ABSContactsDeltaSource *)self deleteBlock];
  if (v4)
  {
    v5 = v4;
    v6 = [v9 contactIdentifier];

    if (v6)
    {
      v7 = [(ABSContactsDeltaSource *)self deleteBlock];
      v8 = [v9 contactIdentifier];
      [(ABSContactsDeltaSource *)self setKeepGoing:(v7)[2](v7, v8)];
    }
  }
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = [a3 contact];
  [(ABSContactsDeltaSource *)self _callAddReplace:v4];
}

- (void)visitLinkContactsEvent:(id)a3
{
  v4 = [a3 fromContact];
  [(ABSContactsDeltaSource *)self _callAddReplace:v4];
}

- (void)visitUnlinkContactEvent:(id)a3
{
  v4 = [a3 contact];
  [(ABSContactsDeltaSource *)self _callAddReplace:v4];
}

- (void)visitPreferredContactForNameEvent:(id)a3
{
  v4 = [a3 preferredContact];
  [(ABSContactsDeltaSource *)self _callAddReplace:v4];
}

- (void)visitPreferredContactForImageEvent:(id)a3
{
  v4 = [a3 preferredContact];
  [(ABSContactsDeltaSource *)self _callAddReplace:v4];
}

- (void)visitDifferentMeCardEvent:(id)a3
{
  v5 = a3;
  v4 = [(ABSContactsDeltaSource *)self addReplaceBlock];

  if (v4)
  {
    abort();
  }
}

@end