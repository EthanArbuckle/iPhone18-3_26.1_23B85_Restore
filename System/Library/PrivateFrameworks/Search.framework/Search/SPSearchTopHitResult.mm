@interface SPSearchTopHitResult
+ (id)richTextArrayFromArray:(id)array;
- (BOOL)_contentType:(id)type orContentTypeTree:(id)tree representsType:(id)representsType;
- (BOOL)doesQueryMatchContentForLowEngagementBundle:(__packedFieldArray *)bundle queryContext:(id)context;
- (BOOL)videoIsRepresentedByContentType:(id)type orContentTypeTree:(id)tree;
- (SPSearchTopHitResult)resultWithTime:(double)time searchString:(id)string isCorrectedQuery:(BOOL)query withQueryContext:(id)context;
- (id)authorStringFromValues:(__packedFieldArray *)values;
- (id)eventAttributesFromValues:(__packedFieldArray *)values eventGroupIdentifier:(id)identifier;
- (id)makeApplicationResult:(__packedFieldArray *)result dataclass:(id)dataclass score:;
- (id)makeMailResult:(SPSearchTopHitResult *)self dataclass:(SEL)dataclass score:(__packedFieldArray *)score searchString:(id)string;
- (id)makeMessagesResult:(__packedFieldArray *)result dataclass:(id)dataclass queryContext:(id)context score:;
- (id)makePersonResult:(__packedFieldArray *)result dataclass:(id)dataclass queryContext:(id)context score:;
- (id)makePersonalAnswersResult:(SPSearchTopHitResult *)self dataclass:(SEL)dataclass queryContext:(__packedFieldArray *)context score:(id)score searchString:(id)string;
- (id)makePhotosResult:(__packedFieldArray *)result dataclass:(id)dataclass queryContext:(id)context score:;
- (id)matchContentForPerson:(__packedFieldArray *)person queryContext:(id)context spotlightQueryTerms:(id)terms;
- (id)personalAnswerStringFromValues:(__packedFieldArray *)values queryContext:(id)context eventAttributes:(id)attributes;
- (id)titleStringFromValues:(__packedFieldArray *)values;
- (void)attachShadowArray:(id)array;
- (void)clearClientData;
- (void)dealloc;
- (void)makeContactResult:(__packedFieldArray *)result identifier:(id)identifier queryContext:(id)context result:(id)a6;
- (void)makeDateBasedResult:(__packedFieldArray *)result result:(id)a4;
- (void)populateAttributesForResult:(id)result withValues:(__packedFieldArray *)values;
- (void)populateCoreSpotlightResult:(id)result values:(__packedFieldArray *)values bundleID:(id)d queryContext:(id)context;
- (void)setupGenericItem:(id)item values:(__packedFieldArray *)values utiType:(id)type bundleID:(id)d;
- (void)updateDataOwnerTypeForResult:(id)result accountID:(id)d;
@end

@implementation SPSearchTopHitResult

- (void)clearClientData
{
  clientData = self->_clientData;
  if (clientData)
  {
    if (atomic_fetch_add(&clientData->var0, 0xFFFFFFFF) == 1)
    {
      sub_10004BDCC(clientData);
    }

    self->_clientData = 0;
  }
}

- (void)attachShadowArray:(id)array
{
  cf = array;
  clientData = self->_clientData;
  v5 = *&clientData[32].var0;
  if (v5)
  {
    CFRelease(v5);
  }

  *&clientData[32].var0 = cf;
  CFRetain(cf);
}

- (void)dealloc
{
  clientData = self->_clientData;
  if (clientData && atomic_fetch_add(&clientData->var0, 0xFFFFFFFF) == 1)
  {
    sub_10004BDCC(clientData);
  }

  v4.receiver = self;
  v4.super_class = SPSearchTopHitResult;
  [(SPSearchTopHitResult *)&v4 dealloc];
}

- (id)authorStringFromValues:(__packedFieldArray *)values
{
  firstObject = 0;
  if (![0 length])
  {
    v5 = sub_10004C1A4(values, 5);
    firstObject = [v5 firstObject];
  }

  if (![firstObject length])
  {
    v6 = sub_10004C1A4(values, 35);
    firstObject2 = [v6 firstObject];

    firstObject = firstObject2;
  }

  if (![firstObject length])
  {
    v8 = sub_10004C1A4(values, 66);
    firstObject3 = [v8 firstObject];

    firstObject = firstObject3;
  }

  return firstObject;
}

- (id)titleStringFromValues:(__packedFieldArray *)values
{
  v5 = 0;
  if (![0 length])
  {
    v5 = sub_10004BAE0(values, 7);
  }

  if (![v5 length])
  {
    v6 = sub_10004BAE0(values, 12);

    v5 = v6;
  }

  if (![v5 length])
  {
    v7 = [(SPSearchTopHitResult *)self authorStringFromValues:values];

    v5 = v7;
  }

  if (![v5 length])
  {
    v8 = sub_10004BAE0(values, 4);

    v5 = v8;
  }

  return v5;
}

- (id)makeMailResult:(SPSearchTopHitResult *)self dataclass:(SEL)dataclass score:(__packedFieldArray *)score searchString:(id)string
{
  v6 = v5;
  v7 = v4;
  stringCopy = string;
  v11 = sub_10004CED8(score, 2);
  v12 = [(SPSearchTopHitResult *)self authorStringFromValues:score];
  v13 = objc_alloc_init(SPCoreSpotlightResult);
  v14 = [SFText textWithString:v12];
  [v13 setTitle:v14];

  [v13 setCompatibilityTitle:v12];
  [v13 setIdentifier:v11];
  v15 = sub_10004BAE0(score, 10);
  [v13 setSectionBundleIdentifier:v15];

  sectionBundleIdentifier = [v13 sectionBundleIdentifier];
  [v13 setApplicationBundleIdentifier:sectionBundleIdentifier];

  applicationBundleIdentifier = [v13 applicationBundleIdentifier];
  [v13 setSectionBundleIdentifier:applicationBundleIdentifier];

  sectionBundleIdentifier2 = [v13 sectionBundleIdentifier];
  [v13 setBundleID:sectionBundleIdentifier2];

  [v13 setScore:{v7, v6}];
  v19 = sub_10004CED8(score, 1);
  [v13 setItemIdentifier:v19];

  [v13 setUserActivityType:CSSearchableItemActionType];
  [v13 setExternalIdentifier:v11];
  v20 = sub_10004BAE0(score, 10);
  [v13 setBundleID:v20];

  [v13 setProtectionClass:stringCopy];
  v21 = sub_10004CED8(score, 32);
  [v13 setInterestingDate:v21];

  v22 = sub_10004CED8(score, 81);
  [v13 setMailConversationIdentifier:v22];

  return v13;
}

- (id)makeMessagesResult:(__packedFieldArray *)result dataclass:(id)dataclass queryContext:(id)context score:
{
  v28 = v5;
  v29 = v6;
  contextCopy = context;
  dataclassCopy = dataclass;
  v10 = sub_10004CED8(result, 2);
  v11 = sub_10004CED8(result, 177);
  v12 = sub_10004CED8(result, 10);
  v13 = sub_10004BAE0(result, 102);
  v34 = sub_10004BAE0(result, 0);
  v14 = sub_10004C1A4(result, 27);
  v15 = [(SPSearchTopHitResult *)self titleStringFromValues:result];
  v16 = v12;
  v31 = v13;
  v32 = v11;
  if ([v13 isEqualToString:@"lnk"])
  {

    v33 = SSSectionIdentifierSyndicatedLinks;
    v17 = sub_10004BAE0(result, 101);
    v18 = [NSURL URLWithString:v17];
    v14 = &off_1000990A8;
  }

  else
  {
    if (!isMessagesAttachmentCoreSpotlightId())
    {
      v20 = v10;
      v18 = 0;
      v33 = v16;
      goto LABEL_10;
    }

    if ([v11 unsignedIntValue])
    {
      v19 = &SSSectionIdentifierSyndicatedPhotos;
    }

    else
    {
      v19 = &SSSectionIdentifierUnsupportedSyndicatedContent;
    }

    v33 = *v19;
    v18 = 0;
    v17 = v16;
  }

  v20 = v10;

LABEL_10:
  v21 = objc_alloc_init(SPCoreSpotlightResult);
  [(SPSearchTopHitResult *)self setupGenericItem:v21 values:result utiType:v34 bundleID:v16];
  bundleID = [v21 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v21 values:result bundleID:bundleID queryContext:contextCopy];

  v23 = [SFText textWithString:v15];
  [v21 setTitle:v23];

  [v21 setCompatibilityTitle:v15];
  [v21 setBundleID:v16];
  [v21 setApplicationBundleIdentifier:v16];
  [v21 setSectionBundleIdentifier:v33];
  [v21 setExternalIdentifier:v20];
  [v21 setIdentifier:v20];
  [v21 setScore:{v28, v29}];
  [v21 setUserActivityType:CSSearchableItemActionType];
  v24 = sub_10004CED8(result, 32);
  [v21 setInterestingDate:v24];

  [v21 setProtectionClass:dataclassCopy];
  v25 = sub_10004CED8(result, 50);
  [v21 setDomainIdentifier:v25];

  [v21 setContentType:v34];
  [v21 setContentTypeTree:v14];
  if (v18)
  {
    [v21 setUrl:v18];
  }

  return v21;
}

- (id)makePhotosResult:(__packedFieldArray *)result dataclass:(id)dataclass queryContext:(id)context score:
{
  v27 = v5;
  v28 = v6;
  contextCopy = context;
  dataclassCopy = dataclass;
  v26 = sub_10004CED8(result, 2);
  v11 = sub_10004CED8(result, 10);
  v12 = sub_10004BAE0(result, 0);
  v13 = sub_10004C1A4(result, 27);
  v14 = [(SPSearchTopHitResult *)self titleStringFromValues:result];
  v30 = sub_10004CED8(result, 177);
  unsignedIntValue = [v30 unsignedIntValue];
  v16 = &SSSectionIdentifierUnsupportedSyndicatedContent;
  if (unsignedIntValue)
  {
    v16 = &SSSectionIdentifierSyndicatedPhotos;
  }

  v17 = *v16;
  v18 = objc_alloc_init(SPCoreSpotlightResult);
  [(SPSearchTopHitResult *)self setupGenericItem:v18 values:result utiType:v12 bundleID:v11];
  bundleID = [v18 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v18 values:result bundleID:bundleID queryContext:contextCopy];

  v20 = [SFText textWithString:v14];
  [v18 setTitle:v20];

  [v18 setCompatibilityTitle:v14];
  [v18 setBundleID:v11];
  [v18 setApplicationBundleIdentifier:v11];
  [v18 setSectionBundleIdentifier:v17];
  [v18 setExternalIdentifier:v26];
  [v18 setIdentifier:v26];
  [v18 setScore:{v27, v28}];
  [v18 setUserActivityType:CSSearchableItemActionType];
  v21 = sub_10004CED8(result, 32);
  [v18 setInterestingDate:v21];

  [v18 setProtectionClass:dataclassCopy];
  v22 = sub_10004CED8(result, 50);
  [v18 setDomainIdentifier:v22];

  v23 = sub_10004CED8(result, 3);
  [v18 setContainerIdentifier:v23];

  [v18 setContentType:v12];
  if (v13 && [v13 count])
  {
    [v18 setContentTypeTree:v13];
  }

  else
  {
    v31 = v12;
    v24 = [NSArray arrayWithObjects:&v31 count:1];
    [v18 setContentTypeTree:v24];
  }

  return v18;
}

- (id)matchContentForPerson:(__packedFieldArray *)person queryContext:(id)context spotlightQueryTerms:(id)terms
{
  contextCopy = context;
  termsCopy = terms;
  if (qword_1000A8580 != -1)
  {
    sub_10006356C();
  }

  v76 = sub_10004BAE0(person, 7);
  v82 = sub_10004CED8(person, 157);
  v77 = sub_10004CED8(person, 59);
  v81 = sub_10004CED8(person, 40);
  v80 = sub_10004CED8(person, 61);
  v79 = sub_10004CED8(person, 39);
  v78 = sub_10004CED8(person, 62);
  v7 = +[NSMutableArray array];
  if ([v82 count])
  {
    [v7 addObjectsFromArray:v82];
  }

  if ([v77 count])
  {
    [v7 addObjectsFromArray:v77];
  }

  if ([v81 count])
  {
    [v7 addObjectsFromArray:v81];
  }

  if ([v80 count])
  {
    [v7 addObjectsFromArray:v80];
  }

  if ([v79 count])
  {
    [v7 addObjectsFromArray:v79];
  }

  if ([v78 count])
  {
    [v7 addObjectsFromArray:v78];
  }

  normalizedSearchString = [contextCopy normalizedSearchString];
  v84 = [normalizedSearchString componentsSeparatedByString:@" "];
  v83 = [v84 count];
  if (v76)
  {
    lowercaseString = [v76 lowercaseString];
    v9 = SSNormalizedQueryString();

    if (normalizedSearchString)
    {
      v10 = [v9 localizedStandardRangeOfString:?];
      v131 = 0;
      v132 = &v131;
      v133 = 0x2020000000;
      v134 = v10 == 0;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v131 = 0;
      v132 = &v131;
      v133 = 0x2020000000;
      v134 = 0;
    }

    v127 = 0;
    v128 = &v127;
    v129 = 0x2020000000;
    v130 = 0;
    v12 = [v9 length];
    v122[0] = _NSConcreteStackBlock;
    v122[1] = 3221225472;
    v122[2] = sub_10004EFD4;
    v122[3] = &unk_1000939B8;
    v123 = v84;
    v124 = &v127;
    v126 = v83;
    v125 = &v131;
    [v9 enumerateSubstringsInRange:0 options:v12 usingBlock:{3, v122}];

    _Block_object_dispose(&v127, 8);
    if ((v132[3] & 1) == 0)
    {
      if (termsCopy)
      {
        v13 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v14 = [v76 stringByTrimmingCharactersInSet:v13];
        v15 = [NSString stringWithFormat:@"name=%@", v14];
        [termsCopy addObject:v15];
      }

      v11 = 0;
      v86 = 0;
      goto LABEL_26;
    }

LABEL_22:
    v86 = v76;
    v11 = 1;
LABEL_26:
    _Block_object_dispose(&v131, 8);

    goto LABEL_27;
  }

  v11 = 0;
  v86 = 0;
LABEL_27:
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v7;
  v16 = [obj countByEnumeratingWithState:&v118 objects:v141 count:16];
  if (!v16)
  {
    goto LABEL_44;
  }

  v17 = *v119;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v119 != v17)
      {
        objc_enumerationMutation(obj);
      }

      if (v11)
      {
        v11 = 1;
        continue;
      }

      v19 = *(*(&v118 + 1) + 8 * i);
      lowercaseString2 = [v19 lowercaseString];
      v21 = SSNormalizedQueryString();

      if (normalizedSearchString)
      {
        v22 = [v21 localizedStandardRangeOfString:normalizedSearchString];
        v131 = 0;
        v132 = &v131;
        v133 = 0x2020000000;
        v134 = v22 == 0;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v131 = 0;
        v132 = &v131;
        v133 = 0x2020000000;
        v134 = 0;
      }

      v127 = 0;
      v128 = &v127;
      v129 = 0x2020000000;
      v130 = 0;
      v23 = [v21 length];
      v113[0] = _NSConcreteStackBlock;
      v113[1] = 3221225472;
      v113[2] = sub_10004F144;
      v113[3] = &unk_1000939B8;
      v114 = v84;
      v115 = &v127;
      v117 = v83;
      v116 = &v131;
      [v21 enumerateSubstringsInRange:0 options:v23 usingBlock:{3, v113}];

      _Block_object_dispose(&v127, 8);
      if ((v132[3] & 1) == 0)
      {
        v11 = 0;
        goto LABEL_41;
      }

LABEL_39:
      v24 = v19;

      v11 = 1;
      v86 = v24;
LABEL_41:
      _Block_object_dispose(&v131, 8);
    }

    v16 = [obj countByEnumeratingWithState:&v118 objects:v141 count:16];
  }

  while (v16);
LABEL_44:

  if (termsCopy)
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v25 = v82;
    v26 = [v25 countByEnumeratingWithState:&v109 objects:v140 count:16];
    if (v26)
    {
      v27 = *v110;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v110 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v109 + 1) + 8 * j);
          v30 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v31 = [v29 stringByTrimmingCharactersInSet:v30];
          v32 = [NSString stringWithFormat:@"name=%@", v31];
          [termsCopy addObject:v32];
        }

        v26 = [v25 countByEnumeratingWithState:&v109 objects:v140 count:16];
      }

      while (v26);
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v33 = v81;
    v34 = [v33 countByEnumeratingWithState:&v105 objects:v139 count:16];
    if (v34)
    {
      v35 = *v106;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v106 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v105 + 1) + 8 * k);
          v38 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v39 = [v37 stringByTrimmingCharactersInSet:v38];
          v40 = [NSString stringWithFormat:@"email=%@", v39];
          [termsCopy addObject:v40];
        }

        v34 = [v33 countByEnumeratingWithState:&v105 objects:v139 count:16];
      }

      while (v34);
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v41 = v80;
    v42 = [v41 countByEnumeratingWithState:&v101 objects:v138 count:16];
    if (v42)
    {
      v43 = *v102;
      do
      {
        for (m = 0; m != v42; m = m + 1)
        {
          if (*v102 != v43)
          {
            objc_enumerationMutation(v41);
          }

          v45 = *(*(&v101 + 1) + 8 * m);
          v46 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v47 = [v45 stringByTrimmingCharactersInSet:v46];
          v48 = [NSString stringWithFormat:@"sharedEmail=%@", v47];
          [termsCopy addObject:v48];
        }

        v42 = [v41 countByEnumeratingWithState:&v101 objects:v138 count:16];
      }

      while (v42);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v49 = v79;
    v50 = [v49 countByEnumeratingWithState:&v97 objects:v137 count:16];
    if (v50)
    {
      v51 = *v98;
      do
      {
        for (n = 0; n != v50; n = n + 1)
        {
          if (*v98 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v53 = *(*(&v97 + 1) + 8 * n);
          v54 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v55 = [v53 stringByTrimmingCharactersInSet:v54];
          v56 = [NSString stringWithFormat:@"phone=%@", v55];
          [termsCopy addObject:v56];
        }

        v50 = [v49 countByEnumeratingWithState:&v97 objects:v137 count:16];
      }

      while (v50);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v57 = v78;
    v58 = [v57 countByEnumeratingWithState:&v93 objects:v136 count:16];
    if (v58)
    {
      v59 = *v94;
      do
      {
        for (ii = 0; ii != v58; ii = ii + 1)
        {
          if (*v94 != v59)
          {
            objc_enumerationMutation(v57);
          }

          v61 = *(*(&v93 + 1) + 8 * ii);
          v62 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v63 = [v61 stringByTrimmingCharactersInSet:v62];
          v64 = [NSString stringWithFormat:@"sharedPhone=%@", v63];
          [termsCopy addObject:v64];
        }

        v58 = [v57 countByEnumeratingWithState:&v93 objects:v136 count:16];
      }

      while (v58);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v65 = v77;
    v66 = [v65 countByEnumeratingWithState:&v89 objects:v135 count:16];
    if (v66)
    {
      v67 = *v90;
      do
      {
        for (jj = 0; jj != v66; jj = jj + 1)
        {
          if (*v90 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = *(*(&v89 + 1) + 8 * jj);
          v70 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v71 = [v69 stringByTrimmingCharactersInSet:v70];
          v72 = [NSString stringWithFormat:@"rawName=%@", v71];
          [termsCopy addObject:v72];
        }

        v66 = [v65 countByEnumeratingWithState:&v89 objects:v135 count:16];
      }

      while (v66);
    }
  }

  v73 = v86;

  return v86;
}

- (id)makePersonResult:(__packedFieldArray *)result dataclass:(id)dataclass queryContext:(id)context score:
{
  v7 = v6;
  v33 = v5;
  dataclassCopy = dataclass;
  contextCopy = context;
  if (qword_1000A85A0 != -1)
  {
    sub_100063580();
  }

  v11 = sub_10004CED8(result, 2);
  v12 = sub_10004BAE0(result, 97);
  v39 = sub_10004CED8(result, 10);
  v38 = sub_10004CED8(result, 50);
  v35 = sub_10004CED8(result, 95);
  sub_10004CED8(result, 0);
  v42 = v41 = @"public.contact";
  v13 = v42;
  v34 = [NSArray arrayWithObjects:&v41 count:2];
  v14 = objc_opt_new();
  v15 = [(SPSearchTopHitResult *)self matchContentForPerson:result queryContext:contextCopy spotlightQueryTerms:v14];
  if (v12)
  {
    v16 = [NSString stringWithFormat:@"contactIdentifier=%@", v12];
    [v14 addObject:v16];
  }

  if (v11)
  {
    v17 = [NSString stringWithFormat:@"personIdentifier=%@", v11];
    [v14 addObject:v17];
  }

  v37 = v14;
  if (v15)
  {
    v18 = 1;
  }

  else
  {
    v19 = vcnt_s8(LOBYTE(result->var0[0]));
    v19.i16[0] = vaddlv_u8(v19);
    v18 = (xmmword_1000A8590 & *(result->var3[v19.u32[0]] + 2)) != 0;
  }

  v20 = objc_alloc_init(SPCoreSpotlightResult);
  [(SPSearchTopHitResult *)self setupGenericItem:v20 values:result utiType:@"com.apple.spotlight.contact" bundleID:v39];
  bundleID = [v20 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v20 values:result bundleID:bundleID queryContext:contextCopy];

  [v20 setPersonIdentifier:v11];
  v22 = [v37 componentsJoinedByString:@"\t"];
  [v20 setPersonQueryIdentifier:v22];

  [v20 setContactIdentifier:v12];
  [v20 setCompletion:v15];
  completion = [v20 completion];
  v24 = [SFText textWithString:completion];
  [v20 setTitle:v24];

  completion2 = [v20 completion];
  [v20 setCompatibilityTitle:completion2];

  [v20 setBundleID:v38];
  v26 = &SSSectionIdentifierPeopleSuggestions;
  if (!v18)
  {
    v26 = &SSPeopleBundleIdentifier;
  }

  [v20 setSectionBundleIdentifier:*v26];
  [v20 setExternalIdentifier:v11];
  [v20 setIdentifier:v11];
  [v20 setScore:{v33, v7}];
  [v20 setType:37];
  if (v35)
  {
    [v35 doubleValue];
  }

  else
  {
    v27 = 0.0;
  }

  [v20 setRankingScore:v27];
  [v20 setUserActivityType:CSSearchableItemActionType];
  v28 = sub_10004CED8(result, 32);
  [v20 setInterestingDate:v28];

  [v20 setProtectionClass:dataclassCopy];
  v29 = sub_10004CED8(result, 50);
  [v20 setDomainIdentifier:v29];

  domainIdentifier = [v20 domainIdentifier];
  [v20 setApplicationBundleIdentifier:domainIdentifier];

  [v20 setContentType:v13];
  [v20 setContentTypeTree:v34];
  [v20 setHasTextContentMatch:v18];
  v31 = sub_10004CED8(result, 96);
  [v20 setPersonType:v31];

  return v20;
}

- (id)eventAttributesFromValues:(__packedFieldArray *)values eventGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (!identifierCopy || ![identifierCopy length])
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = [v6 componentsSeparatedByString:@"|"];
  if ([v7 count] >= 2)
  {
    v9 = [v7 objectAtIndexedSubscript:0];
    v10 = +[NSMutableDictionary dictionary];
    if ([v9 hasPrefix:@"flight"])
    {
      if ([v7 count] >= 5)
      {
        [v10 setObject:@"flight" forKeyedSubscript:@"eventType"];
        v11 = [v7 objectAtIndexedSubscript:1];
        [v10 setObject:v11 forKeyedSubscript:@"flightDepartureAirportCode"];

        v12 = [v7 objectAtIndexedSubscript:2];
        [v10 setObject:v12 forKeyedSubscript:@"flightArrivalAirportCode"];

        v13 = [v7 objectAtIndexedSubscript:3];
        [v10 setObject:v13 forKeyedSubscript:@"flightDesignator"];

        v14 = [v7 objectAtIndexedSubscript:4];
        v15 = @"flightConfirmationNumber";
LABEL_16:
        [v10 setObject:v14 forKeyedSubscript:v15];

        v8 = [v10 copy];
        goto LABEL_17;
      }
    }

    else if ([v9 isEqualToString:@"hotel"])
    {
      if ([v7 count] >= 3)
      {
        [v10 setObject:@"hotel" forKeyedSubscript:@"eventType"];
        v16 = [v7 objectAtIndexedSubscript:1];
        [v10 setObject:v16 forKeyedSubscript:@"hotelReservationForName"];

        v17 = [v7 objectAtIndexedSubscript:2];
        [v10 setObject:v17 forKeyedSubscript:@"hotelStartDate"];

        v14 = sub_10004BAE0(values, 210);
        v15 = @"hotelReservationForAddress";
        goto LABEL_16;
      }
    }

    else if ([v9 isEqualToString:@"food"] && objc_msgSend(v7, "count") >= 3)
    {
      [v10 setObject:@"restaurant" forKeyedSubscript:@"eventType"];
      v18 = [v7 objectAtIndexedSubscript:1];
      [v10 setObject:v18 forKeyedSubscript:@"restaurantReservationForName"];

      v14 = [v7 objectAtIndexedSubscript:2];
      v15 = @"restaurantStartDate";
      goto LABEL_16;
    }

    v8 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v8 = 0;
LABEL_18:

LABEL_19:

  return v8;
}

- (id)personalAnswerStringFromValues:(__packedFieldArray *)values queryContext:(id)context eventAttributes:(id)attributes
{
  contextCopy = context;
  attributesCopy = attributes;
  answerAttributes = [contextCopy answerAttributes];
  v10 = [answerAttributes count];

  if (!v10)
  {
    v14 = &stru_100094040;
    goto LABEL_22;
  }

  answerAttributes2 = [contextCopy answerAttributes];
  firstObject = [answerAttributes2 firstObject];

  if ([firstObject isEqualToString:MDItemEventFlightDepartureAirportCode])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"flightDepartureAirportCode"];
    [NSString stringWithFormat:@"Your Flight is departing from %@", v13];
    v14 = LABEL_19:;
    goto LABEL_20;
  }

  if ([firstObject isEqualToString:MDItemEventFlightArrivalAirportCode])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"flightArrivalAirportCode"];
    [NSString stringWithFormat:@"Your Flight is arriving at %@", v13];
    goto LABEL_19;
  }

  if ([firstObject isEqualToString:MDItemEventFlightDesignator])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"flightDesignator"];
    [NSString stringWithFormat:@"Your Flight Number is %@", v13];
    goto LABEL_19;
  }

  if ([firstObject isEqualToString:MDItemEventFlightConfirmationNumber])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"flightConfirmationNumber"];
    [NSString stringWithFormat:@"Your Flight Confirmation Number is %@", v13];
    goto LABEL_19;
  }

  if ([firstObject isEqualToString:MDItemEventFlightPassengerSeatNumbers])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"flightPassengerSeatNumbers"];
    [NSString stringWithFormat:@"Your Flight Seat Numbers are %@", v13];
    goto LABEL_19;
  }

  if ([firstObject isEqualToString:MDItemEventHotelReservationForName])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"hotelReservationForName"];
    [NSString stringWithFormat:@"Your Hotel Name is %@", v13];
    goto LABEL_19;
  }

  if ([firstObject isEqualToString:MDItemEventHotelReservationForAddress])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"hotelReservationForAddress"];
    [NSString stringWithFormat:@"Your Hotel Address is %@", v13];
    goto LABEL_19;
  }

  if ([firstObject isEqualToString:MDItemEventRestaurantReservationForName])
  {
    v13 = [attributesCopy objectForKeyedSubscript:@"restaurantReservationForName"];
    [NSString stringWithFormat:@"Your Restaurant Name is %@", v13];
    goto LABEL_19;
  }

  if ([firstObject isEqualToString:MDItemStartDate])
  {
    v13 = sub_10004C300(values, 17);
    v16 = objc_alloc_init(NSDateFormatter);
    [v16 setDateStyle:3];
    [v16 setTimeStyle:1];
    v17 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [v16 setLocale:v17];

    v18 = [v16 stringFromDate:v13];
    v19 = [attributesCopy objectForKeyedSubscript:@"eventType"];
    v20 = [v19 isEqualToString:@"flight"];

    if (v20)
    {
      [NSString stringWithFormat:@"Your Flight Departs on %@", v18];
    }

    else
    {
      v24 = [attributesCopy objectForKeyedSubscript:@"eventType"];
      v25 = [v24 isEqualToString:@"hotel"];

      if (v25)
      {
        [NSString stringWithFormat:@"Your Hotel Check In is at %@", v18];
      }

      else
      {
        [NSString stringWithFormat:@"Your Restaurant Check In is at %@", v18];
      }
    }
  }

  else
  {
    if (![firstObject isEqualToString:MDItemEndDate])
    {
      v14 = 0;
      goto LABEL_21;
    }

    v13 = sub_10004C300(values, 18);
    v16 = objc_alloc_init(NSDateFormatter);
    [v16 setDateStyle:3];
    [v16 setTimeStyle:1];
    v21 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US"];
    [v16 setLocale:v21];

    v18 = [v16 stringFromDate:v13];
    v22 = [attributesCopy objectForKeyedSubscript:@"eventType"];
    v23 = [v22 isEqualToString:@"flight"];

    if (v23)
    {
      [NSString stringWithFormat:@"Your Flight Arrives on %@", v18];
    }

    else
    {
      v26 = [attributesCopy objectForKeyedSubscript:@"eventType"];
      v27 = [v26 isEqualToString:@"hotel"];

      if (v27)
      {
        [NSString stringWithFormat:@"Your Hotel Check out is at %@", v18];
      }

      else
      {
        [NSString stringWithFormat:@"Your Restaurant Check out is at %@", v18];
      }
    }
  }
  v14 = ;

LABEL_20:
LABEL_21:

LABEL_22:

  return v14;
}

- (id)makePersonalAnswersResult:(SPSearchTopHitResult *)self dataclass:(SEL)dataclass queryContext:(__packedFieldArray *)context score:(id)score searchString:(id)string
{
  stringCopy = string;
  v8 = objc_opt_new();
  [v8 setScore:{*&self->_clientData[4].var0, *&self->_clientData[6].var0}];
  [v8 setProtectionClass:*&self->_clientData[8].var0];
  v9 = sub_10004BAE0(context, 10);
  [v8 setBundleID:v9];

  bundleID = [v8 bundleID];
  [v8 setApplicationBundleIdentifier:bundleID];

  bundleID2 = [v8 bundleID];
  [v8 setSectionBundleIdentifier:bundleID2];

  v12 = sub_10004CED8(context, 2);
  [v8 setIdentifier:v12];

  bundleID3 = [v8 bundleID];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v8 values:context bundleID:bundleID3 queryContext:stringCopy];

  v14 = sub_10004CED8(context, 0);
  if (v14)
  {
    v15 = sub_10004CED8(context, 0);
  }

  else
  {
    v15 = @"com.apple.spotlight.events";
  }

  v21 = v15;
  v16 = [NSArray arrayWithObjects:&v21 count:1];
  [v8 setContentType:v15];
  [v8 setContentTypeTree:v16];
  v17 = sub_10004BAE0(context, 209);
  v18 = [(SPSearchTopHitResult *)self eventAttributesFromValues:context eventGroupIdentifier:v17];
  v19 = [(SPSearchTopHitResult *)self personalAnswerStringFromValues:context queryContext:stringCopy eventAttributes:v18];
  [v8 setPersonalAnswerString:v19];

  return v8;
}

- (id)makeApplicationResult:(__packedFieldArray *)result dataclass:(id)dataclass score:
{
  v6 = v5;
  v51 = v4;
  dataclassCopy = dataclass;
  v8 = SPFastApplicationsGetNoBuild();
  v9 = sub_10004BAE0(result, 2);
  v10 = [v8 objectForKeyedSubscript:v9];
  if (!v10)
  {
    if (([v9 isEqualToString:@"com.apple.TVRemoteUIService"] & 1) == 0)
    {
      if (v8 || (SPCopyVisibleApps(), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 containsObject:v9], v39, !v40))
      {
        v11 = 0;
        goto LABEL_40;
      }
    }

    v11 = sub_10004BAE0(result, 10);
    v23 = objc_alloc_init(SPCoreSpotlightResult);
    [v23 setIdentifier:v9];
    v24 = sub_10004BAE0(result, 7);
    v25 = objc_alloc_init(SFText);
    v26 = v25;
    v50 = v25;
    if (v24)
    {
      [v25 setText:v24];
      v26 = v50;
    }

    [v23 setTitle:v26];
    v27 = sub_10004BAE0(result, 156);
    v47 = v24;
    if (v27)
    {
      v28 = [SFRichText textWithString:v27];
      v53 = v28;
      [NSArray arrayWithObjects:&v53 count:1];
      v29 = v9;
      v31 = v30 = v6;
      [v23 setDescriptions:v31];

      v6 = v30;
      v9 = v29;
      v10 = 0;
    }

    [v23 setSectionBundleIdentifier:v11];
    v48 = v6;
    if ([v11 isEqualToString:PRSRankingAppClipsBundleString])
    {
      [v23 setBundleID:SPApplicationBundleIdGeneralApplication];
      [v23 setType:22];
      externalIdentifier = [SFAppIconImage alloc];
      identifier = [v23 identifier];
      [externalIdentifier setBundleIdentifier:identifier];

      [v23 setThumbnail:externalIdentifier];
      v34 = sub_10004BAE0(result, 72);
      [v23 setApplicationBundleIdentifier:v34];
    }

    else
    {
      if (sub_10004C634(result, 180))
      {
        [v23 setType:24];
        v41 = 10;
      }

      else
      {
        v41 = 2;
      }

      v42 = sub_10004BAE0(result, v41);
      [v23 setApplicationBundleIdentifier:v42];

      v43 = sub_10004BAE0(result, 2);
      [v23 setExternalIdentifier:v43];

      applicationBundleIdentifier = [v23 applicationBundleIdentifier];
      [v23 setBundleID:applicationBundleIdentifier];

      externalIdentifier = [v23 externalIdentifier];
      [v23 setResultBundleId:externalIdentifier];
    }

    [v23 setScore:{v51, v48}];
    [v23 setProtectionClass:dataclassCopy];
    [v23 setIsLocalApplicationResult:1];
    applicationBundleIdentifier2 = [v23 applicationBundleIdentifier];

    if (!applicationBundleIdentifier2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v55 = v23;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No applicationBundleIdentifier for %@", buf, 0xCu);
      }

      v23 = 0;
    }

    goto LABEL_39;
  }

  v11 = objc_alloc_init(SPCoreSpotlightResult);
  [v10 copyToSearchFoundationResult:v11];
  compatibilityTitle = [v11 compatibilityTitle];

  if (!compatibilityTitle)
  {
    v13 = sub_10004BAE0(result, 7);
    [v11 title];
    v15 = v14 = v6;
    [v15 setText:v13];

    v6 = v14;
  }

  subtitle = [v10 subtitle];

  if (!subtitle)
  {
    v17 = sub_10004BAE0(result, 156);
    if (v17)
    {
      [SFRichText textWithString:v17];
      v49 = v9;
      v19 = v18 = v6;
      v56 = v19;
      v20 = [NSArray arrayWithObjects:&v56 count:1];
      [v11 setDescriptions:v20];

      v6 = v18;
      v9 = v49;
    }
  }

  if ([v10 isWebClip])
  {
    [v11 setType:24];
  }

  if ([v10 isAppClip])
  {
    [v11 setSectionBundleIdentifier:PRSRankingAppClipsBundleString];
    [v11 setBundleID:SPApplicationBundleIdGeneralApplication];
    [v11 setType:22];
    applicationBundleIdentifier3 = [SFAppIconImage alloc];
    identifier2 = [v11 identifier];
    [applicationBundleIdentifier3 setBundleIdentifier:identifier2];

    [v11 setThumbnail:applicationBundleIdentifier3];
  }

  else
  {
    [v11 setSectionBundleIdentifier:PRSRankingAppsBundleString];
    if ([v10 isWebClip])
    {
      v35 = 10;
    }

    else
    {
      v35 = 2;
    }

    v36 = sub_10004BAE0(result, v35);
    [v11 setApplicationBundleIdentifier:v36];

    v37 = sub_10004BAE0(result, 2);
    [v11 setExternalIdentifier:v37];

    applicationBundleIdentifier3 = [v11 applicationBundleIdentifier];
    [v11 setBundleID:applicationBundleIdentifier3];
  }

  [v11 setScore:{v51, v6}];
  [v11 setProtectionClass:dataclassCopy];
  [v11 setIsLocalApplicationResult:1];
  applicationBundleIdentifier4 = [v11 applicationBundleIdentifier];

  if (!applicationBundleIdentifier4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No applicationBundleIdentifier for %@", buf, 0xCu);
    }

    v23 = 0;
LABEL_39:

    v11 = v23;
  }

LABEL_40:

  return v11;
}

- (void)makeDateBasedResult:(__packedFieldArray *)result result:(id)a4
{
  v14 = a4;
  v5 = sub_10004C300(result, 28);
  v6 = sub_10004C300(result, 32);
  v7 = sub_10004C300(result, 29);
  v8 = sub_10004C300(result, 25);
  v9 = sub_10004C300(result, 17);
  v10 = sub_10004BAE0(result, 69);
  [v14 setCalendarIdentifier:v10];
  v11 = v9;
  if (v9 || (v11 = v5) != 0 || (v11 = v7) != 0 || (v11 = v8) != 0 || (v11 = v6) != 0)
  {
    [v14 setInterestingDate:v11];
  }

  else
  {
    interestingDate = [v14 interestingDate];
    [v14 setInterestingDate:interestingDate];
  }

  v12 = sub_10004CED8(result, 50);
  [v14 setDomainIdentifier:v12];

  if (v5)
  {
    [v14 setCompleted:1];
  }
}

- (void)makeContactResult:(__packedFieldArray *)result identifier:(id)identifier queryContext:(id)context result:(id)a6
{
  identifierCopy = identifier;
  v10 = a6;
  v11 = [(SPSearchTopHitResult *)self matchContentForPerson:result queryContext:context spotlightQueryTerms:0];
  [v10 setContactIdentifier:identifierCopy];
  if (v11)
  {
    [v10 setCompletion:v11];
    [v10 setIdentifier:identifierCopy];
    [v10 setType:36];
    if (qword_1000A85C0 != -1)
    {
      sub_100063594();
    }

    v12 = 1;
  }

  else
  {
    v13 = sub_10004BAE0(result, 7);
    [v10 setCompletion:v13];

    [v10 setIdentifier:identifierCopy];
    [v10 setType:36];
    if (qword_1000A85C0 != -1)
    {
      sub_100063594();
    }

    v14 = vcnt_s8(LOBYTE(result->var0[0]));
    v14.i16[0] = vaddlv_u8(v14);
    v12 = (xmmword_1000A85B0 & *(result->var3[v14.u32[0]] + 2)) != 0;
  }

  [v10 setHasTextContentMatch:v12];
  v15 = result->var0[5];
  if ((v15 & 0x1000000000) != 0 && (v16 = result->var3[(vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*&result->var0[1])))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*&result->var0[3]))))) + vaddlv_u8(vcnt_s8(result->var0[0])) + vaddlv_u8(vcnt_s8((v15 & 0xFFFFFFFFFLL))))]) != 0 && *(v16 + 6) == 7 && *(v16 + 5) == 3)
  {
    v17 = *(v16 + 4);
    [v10 setIncomingCount:*(v16 + 5)];
    if (v17)
    {
      v18 = 0;
      while (*([v10 incomingCount] + v18) < 1)
      {
        if (v17 == ++v18)
        {
          goto LABEL_18;
        }
      }

      [v10 setHasCommunicationContent:1];
    }
  }

  else
  {
    [v10 setIncomingCount:0];
  }

LABEL_18:
  v19 = result->var0[5];
  if ((v19 & 0x2000000000) != 0 && (v20 = result->var3[(vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*&result->var0[1])))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*&result->var0[3]))))) + vaddlv_u8(vcnt_s8(result->var0[0])) + vaddlv_u8(vcnt_s8((v19 & 0x1FFFFFFFFFLL))))]) != 0 && *(v20 + 6) == 7 && *(v20 + 5) == 3)
  {
    v22 = *(v20 + 4);
    v21 = *(v20 + 5);
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  [v10 setOutgoingCount:v21];
  if (([v10 hasCommunicationContent] & 1) == 0 && v22)
  {
    v23 = 0;
    while (*([v10 outgoingCount] + v23) < 1)
    {
      if (v22 == ++v23)
      {
        goto LABEL_31;
      }
    }

    [v10 setHasCommunicationContent:1];
  }

LABEL_31:
}

- (BOOL)doesQueryMatchContentForLowEngagementBundle:(__packedFieldArray *)bundle queryContext:(id)context
{
  contextCopy = context;
  v6 = sub_10004BAE0(bundle, 7);
  if (!v6)
  {
    v6 = sub_10004BAE0(bundle, 12);
  }

  v7 = v6;
  normalizedSearchString = [contextCopy normalizedSearchString];
  v9 = 0;
  v38 = v7;
  if (v7 && normalizedSearchString)
  {
    v10 = normalizedSearchString;
    if ([normalizedSearchString length] >= 4)
    {
      lowercaseString = [v38 lowercaseString];
      v12 = SSNormalizedQueryString();

      v36 = v10;
      v13 = [v10 componentsSeparatedByString:@" "];
      v35 = v12;
      v43 = [v12 componentsSeparatedByString:@" "];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v14 = v13;
      v42 = [v14 countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v42)
      {
        v15 = 0;
        v16 = 0;
        v39 = 0;
        v40 = v14;
        v41 = *v53;
        v37 = contextCopy;
        while (2)
        {
          v17 = 0;
          do
          {
            if (*v53 != v41)
            {
              objc_enumerationMutation(v14);
            }

            v46 = v15;
            v47 = v16;
            v45 = v17;
            v18 = *(*(&v52 + 1) + 8 * v17);
            v44 = [v18 length];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v19 = v43;
            v20 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = 0;
              v23 = *v49;
              v24 = 0x7FFFFFFFLL;
              while (2)
              {
                for (i = 0; i != v21; i = i + 1)
                {
                  if (*v49 != v23)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v26 = *(*(&v48 + 1) + 8 * i);
                  if ([v26 localizedStandardRangeOfString:v18] != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v28 = v27;
                    v29 = [v26 length];
                    v30 = [v26 length];
                    v31 = v30;
                    if (v28 == v29)
                    {

                      v24 = v31;
                      v14 = v40;
                      v33 = v46;
                      v32 = v47;
                      goto LABEL_32;
                    }

                    if (v30 < v24)
                    {
                      v24 = [v26 length];
                    }

                    v22 = 1;
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v48 objects:v56 count:16];
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v22 = 0;
              v24 = 0x7FFFFFFFLL;
            }

            if ((v22 & 1) == 0 || v39 > 0 || [v18 length] <= 3 && 3 * v24 > 4 * objc_msgSend(v18, "length"))
            {
              v14 = v40;

              v9 = 0;
              contextCopy = v37;
              goto LABEL_39;
            }

            v39 = 1;
            v14 = v40;
            v33 = v46;
            v32 = v47;
LABEL_32:
            v16 = v44 + v32;
            v15 = v24 + v33;
            v17 = v45 + 1;
          }

          while ((v45 + 1) != v42);
          contextCopy = v37;
          v42 = [v14 countByEnumeratingWithState:&v52 objects:v57 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }

        if (v16 > 3)
        {
          v9 = 1;
          goto LABEL_39;
        }
      }

      else
      {

        v16 = 0;
        v15 = 0;
      }

      v9 = 3 * v15 <= 4 * v16;
LABEL_39:

      normalizedSearchString = v36;
    }

    else
    {
      v9 = 0;
      normalizedSearchString = v10;
    }
  }

  return v9;
}

- (BOOL)videoIsRepresentedByContentType:(id)type orContentTypeTree:(id)tree
{
  typeCopy = type;
  treeCopy = tree;
  if ([(SPSearchTopHitResult *)self _contentType:typeCopy orContentTypeTree:treeCopy representsType:kUTTypeVideo])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(SPSearchTopHitResult *)self _contentType:typeCopy orContentTypeTree:treeCopy representsType:kUTTypeMovie];
  }

  return v8;
}

- (BOOL)_contentType:(id)type orContentTypeTree:(id)tree representsType:(id)representsType
{
  treeCopy = tree;
  representsTypeCopy = representsType;
  if ([type isEqualToString:representsTypeCopy])
  {
    v9 = 1;
  }

  else
  {
    v9 = [treeCopy containsObject:representsTypeCopy];
  }

  return v9;
}

- (void)setupGenericItem:(id)item values:(__packedFieldArray *)values utiType:(id)type bundleID:(id)d
{
  itemCopy = item;
  typeCopy = type;
  dCopy = d;
  v13 = sub_10004CED8(values, 27);
  v14 = sub_10004CED8(values, 38);
  v42 = sub_10004CED8(values, 83);
  v41 = sub_10004CED8(values, 86);
  v15 = sub_10004CED8(values, 15);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = sub_10004CED8(values, 64);
  }

  v18 = v17;

  v19 = sub_10004CED8(values, 30);
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = sub_10004CED8(values, 30);
  }

  v22 = v21;

  if (v18)
  {
    [itemCopy setRelatedUniqueIdentifier:v18];
  }

  else
  {
    relatedUniqueIdentifier = [itemCopy relatedUniqueIdentifier];
    [itemCopy setRelatedUniqueIdentifier:relatedUniqueIdentifier];
  }

  if (v22)
  {
    [itemCopy setAccountIdentifier:v22];
  }

  else
  {
    accountIdentifier = [itemCopy accountIdentifier];
    [itemCopy setAccountIdentifier:accountIdentifier];
  }

  [itemCopy setFileProviderIdentifier:v42];
  [itemCopy setFileProviderDomainIdentifier:v41];
  v25 = sub_10004CED8(values, 87);
  [itemCopy setRelatedBundleID:v25];

  v26 = sub_10004CED8(values, 165);
  [itemCopy setDisplayOrder:v26];

  if ((-[SPSearchTopHitResult audioOrVideoIsRepresentedByContentType:orContentTypeTree:](self, "audioOrVideoIsRepresentedByContentType:orContentTypeTree:", typeCopy, v13) || -[SPSearchTopHitResult audioIsRepresentedByContentType:orContentTypeTree:](self, "audioIsRepresentedByContentType:orContentTypeTree:", typeCopy, v13) || -[SPSearchTopHitResult playlistOrAlbumIsRepresentedByContentType:orContentTypeTree:](self, "playlistOrAlbumIsRepresentedByContentType:orContentTypeTree:", typeCopy, v13) || -[SPSearchTopHitResult bookIsRepresentedByContentType:orContentTypeTree:](self, "bookIsRepresentedByContentType:orContentTypeTree:", typeCopy, v13)) && ([dCopy isEqualToString:@"com.apple.podcasts"] & 1) == 0)
  {
    [itemCopy setStoreIdentifier:v14];
  }

  else
  {
    compatibilityTitle = [itemCopy compatibilityTitle];
    if (compatibilityTitle)
    {
    }

    else if ([(SPSearchTopHitResult *)self messageIsRepresentedByContentType:typeCopy orContentTypeTree:v13]|| [(SPSearchTopHitResult *)self contactIsRepresentedByContentType:typeCopy orContentTypeTree:v13])
    {
      v28 = [(SPSearchTopHitResult *)self authorStringFromValues:values];
      [itemCopy setCompatibilityTitle:v28];
    }
  }

  v29 = SPLogForSPLogCategoryDefault();
  v30 = v29;
  if (gSPLogDebugAsDefault)
  {
    v31 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v31 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v29, v31))
  {
    v39 = v14;
    v40 = typeCopy;
    v32 = sub_10004CED8(values, 7);
    v33 = v32;
    v34 = dCopy;
    if (v32)
    {
      v35 = 0;
      v36 = v32;
    }

    else
    {
      v37 = sub_10004CED8(values, 12);
      if (v37)
      {
        v35 = 0;
        v38 = v37;
        v36 = v37;
      }

      else
      {
        v36 = sub_10004CED8(values, 4);
        v38 = 0;
        v35 = 1;
      }
    }

    *buf = 138412802;
    v44 = v34;
    v45 = 2112;
    v46 = v42;
    v47 = 2112;
    v48 = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Bundle id: %@ FPId: %@ Title:%@", buf, 0x20u);
    if (v35)
    {
    }

    if (!v33)
    {
    }

    dCopy = v34;
    v14 = v39;
    typeCopy = v40;
  }
}

- (void)updateDataOwnerTypeForResult:(id)result accountID:(id)d
{
  resultCopy = result;
  dCopy = d;
  if (dCopy && ![resultCopy dataOwnerType])
  {
    if (qword_1000A85D0 != -1)
    {
      sub_1000635A8();
    }

    v7 = [qword_1000A85C8 objectForKey:dCopy];
    if (v7)
    {
      goto LABEL_20;
    }

    v8 = +[ACAccountStore defaultStore];
    v13 = 0;
    v9 = [v8 accountWithIdentifier:dCopy error:&v13];
    v10 = v13;

    if (v9)
    {
      mCIsManaged = [v9 MCIsManaged];
    }

    else
    {
      if (!v10 || [v10 code] == 10002)
      {
LABEL_13:

        goto LABEL_14;
      }

      mCIsManaged = 1;
    }

    v7 = [NSNumber numberWithBool:mCIsManaged];
    [qword_1000A85C8 setObject:v7 forKey:dCopy];

    if (v7)
    {
LABEL_20:
      if ([v7 BOOLValue])
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      [resultCopy setDataOwnerType:v12];
      v10 = v7;
      goto LABEL_13;
    }
  }

LABEL_14:
}

- (void)populateCoreSpotlightResult:(id)result values:(__packedFieldArray *)values bundleID:(id)d queryContext:(id)context
{
  resultCopy = result;
  dCopy = d;
  contextCopy = context;
  if (qword_1000A85E0 != -1)
  {
    sub_1000635BC();
  }

  v53 = sub_10004C1A4(values, 27);
  v52 = sub_10004BAE0(values, 102);
  v12 = sub_10004CED8(values, 0);
  v13 = sub_10004CED8(values, 11);
  v14 = sub_10004CED8(values, 2);
  v58 = sub_10004CED8(values, 1);
  v15 = sub_10004CED8(values, 13);
  v16 = sub_10004CED8(values, 14);
  v56 = sub_10004CED8(values, 177);
  selfCopy = self;
  v17 = [(SPSearchTopHitResult *)self titleStringFromValues:values];
  v18 = [v17 stringByTrimmingCharactersInSet:qword_1000A85D8];

  v55 = v18;
  v19 = v18;
  v20 = v16;
  [resultCopy setCompatibilityTitle:v19];
  v54 = v14;
  [resultCopy setIdentifier:v14];
  v21 = sub_10004CED8(values, 10);
  [resultCopy setResultBundleId:v21];

  v50 = v15;
  [resultCopy setContentURL:v15];
  v22 = sub_10004CED8(values, 51);
  [resultCopy setFileIdentifier:v22];

  v23 = sub_10004CED8(values, 52);
  [resultCopy setParentFileIdentifier:v23];

  v24 = sub_10004CED8(values, 53);
  [resultCopy setFilename:v24];

  v25 = sub_10004CED8(values, 54);
  [resultCopy setDocumentIdentifier:v25];

  [resultCopy setUserActivityType:v13];
  [resultCopy setUserActivityRequiredString:v16];
  v26 = sub_10004CED8(values, 72);
  [resultCopy setRelatedBundleID:v26];

  v27 = [dCopy isEqualToString:off_1000A7FC0];
  v28 = [v12 hasPrefix:INInteractionContentType];
  if (v13 || (v27 & 1) != 0 || v28)
  {
    v35 = SPLogForSPLogCategoryQuery();
    v36 = v35;
    if (gSPLogDebugAsDefault)
    {
      v37 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v37 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v35, v37))
    {
      *buf = 138412290;
      v60 = dCopy;
      _os_log_impl(&_mh_execute_header, v36, v37, "Found #apphistory item for %@", buf, 0xCu);
    }

    if (v58)
    {
      v38 = v58;
    }

    else
    {
      v38 = v16;
    }

    [resultCopy setUserActivityRequiredString:v38];
    v39 = sub_10004CED8(values, 21);
    v40 = v39;
    if (v39)
    {
      [resultCopy setPubliclyIndexable:{objc_msgSend(v39, "BOOLValue")}];
    }

    [(SPSearchTopHitResult *)selfCopy setupGenericItem:resultCopy values:values utiType:v12 bundleID:dCopy];

    v30 = contextCopy;
    goto LABEL_22;
  }

  if (([v12 isEqualToString:@"com.apple.mobilenotes.spotlightrecord"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"com.apple.notes.spotlightrecord") & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"com.apple.mobilenotes"))
  {
    [(SPSearchTopHitResult *)selfCopy setupGenericItem:resultCopy values:values utiType:v12 bundleID:dCopy];
    v29 = v56;
    v30 = contextCopy;
    if ([v56 unsignedIntValue])
    {
      v31 = &SSSectionIdentifierSyndicatedPhotos;
      v33 = v52;
      v32 = v53;
      v34 = v50;
    }

    else
    {
      v33 = v52;
      v32 = v53;
      v34 = v50;
      if (!isImageOrVideoContentType())
      {
LABEL_26:
        [resultCopy setUserActivityType:CSSearchableItemActionType];
        goto LABEL_27;
      }

      v31 = &SSSectionIdentifierUnsupportedSyndicatedContent;
    }

    [resultCopy setSectionBundleIdentifier:*v31];
    goto LABEL_26;
  }

  v30 = contextCopy;
  v29 = v56;
  if (([dCopy isEqualToString:@"com.apple.reminders"] & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", @"com.apple.mobilecal"))
  {
    if ([v12 isEqualToString:@"public.to-do-item"])
    {
      [(SPSearchTopHitResult *)selfCopy makeDateBasedResult:values result:resultCopy];
    }

    v41 = sub_10004CED8(values, 30);
    [(SPSearchTopHitResult *)selfCopy updateDataOwnerTypeForResult:resultCopy accountID:v41];
    goto LABEL_33;
  }

  if (![dCopy isEqualToString:@"com.apple.VoiceMemos"])
  {
    if ([dCopy isEqualToString:@"com.apple.MobileAddressBook"])
    {
      [(SPSearchTopHitResult *)selfCopy makeContactResult:values identifier:v54 queryContext:contextCopy result:resultCopy];
      v46 = SPLogForSPLogCategoryQuery();
      v41 = v46;
      if (gSPLogDebugAsDefault)
      {
        v47 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v47 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_33;
      }

      *buf = 138412290;
      v60 = v55;
    }

    else
    {
      if (![dCopy isEqualToString:@"com.apple.CoreSuggestions"])
      {
        [resultCopy setUserActivityType:CSSearchableItemActionType];
        v49 = SPLogForSPLogCategoryQuery();
        v43 = v49;
        if (gSPLogDebugAsDefault)
        {
          v44 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v44 = OS_LOG_TYPE_DEBUG;
        }

        if (!os_log_type_enabled(v49, v44))
        {
          goto LABEL_41;
        }

        *buf = 138412290;
        v60 = v12;
        v45 = "Adding app search UTI: %@";
        goto LABEL_40;
      }

      [(SPSearchTopHitResult *)selfCopy makeContactResult:values identifier:v54 queryContext:contextCopy result:resultCopy];
      v48 = SPLogForSPLogCategoryQuery();
      v41 = v48;
      if (gSPLogDebugAsDefault)
      {
        v47 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v47 = OS_LOG_TYPE_DEBUG;
      }

      if (!os_log_type_enabled(v48, v47))
      {
LABEL_33:

        v33 = v52;
        v32 = v53;
        v34 = v50;
        goto LABEL_27;
      }

      *buf = 138412290;
      v60 = v55;
    }

    _os_log_impl(&_mh_execute_header, v41, v47, "Adding contact: %@", buf, 0xCu);
    goto LABEL_33;
  }

  v42 = SPLogForSPLogCategoryQuery();
  v43 = v42;
  if (gSPLogDebugAsDefault)
  {
    v44 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v44 = OS_LOG_TYPE_DEBUG;
  }

  if (!os_log_type_enabled(v42, v44))
  {
    goto LABEL_41;
  }

  *buf = 138412290;
  v60 = v55;
  v45 = "Adding voice memo: %@";
LABEL_40:
  _os_log_impl(&_mh_execute_header, v43, v44, v45, buf, 0xCu);
LABEL_41:

  [(SPSearchTopHitResult *)selfCopy setupGenericItem:resultCopy values:values utiType:v12 bundleID:dCopy];
LABEL_22:
  v33 = v52;
  v32 = v53;
  v34 = v50;
  v29 = v56;
LABEL_27:
}

+ (id)richTextArrayFromArray:(id)array
{
  arrayCopy = array;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [SFRichText textWithString:v10, v15];
            [v4 addObject:v11];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (SPSearchTopHitResult)resultWithTime:(double)time searchString:(id)string isCorrectedQuery:(BOOL)query withQueryContext:(id)context
{
  queryCopy = query;
  stringCopy = string;
  contextCopy = context;
  disabledApps = [contextCopy disabledApps];
  v13 = [disabledApps count];
  if (v13)
  {
    v13 = [NSSet setWithArray:disabledApps];
  }

  clientData = self->_clientData;
  if (!clientData)
  {
    v25 = 0;
    goto LABEL_126;
  }

  v92 = queryCopy;
  v95 = v13;
  v93 = disabledApps;
  v15 = sub_10004BAE0(&clientData[16], 10);
  v97 = sub_10004CED8(&clientData[16], 72);
  v98 = sub_10004BAE0(&clientData[16], 0);
  v94 = sub_10004CED8(&clientData[16], 177);
  v16 = sub_10004C300(&clientData[16], 32);
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;
  v19 = sub_10004C300(&clientData[16], 25);
  [v19 timeIntervalSinceReferenceDate];
  if ((v18 >= time || time - v18 >= 300.0) && (v20 >= time || time - v20 >= 300.0))
  {

    if (([(__CFString *)v15 isEqualToString:SPApplicationBundleIdGeneralApplication]& 1) != 0 || ([(__CFString *)v15 isEqualToString:SPApplicationBundleIdGeneralAppClips]& 1) != 0 || ([(__CFString *)v15 isEqualToString:@"com.apple.MobileAddressBook"]& 1) != 0)
    {
      v24 = 0;
    }

    else
    {
      v43 = sub_10004BAE0(&clientData[16], 58);
      v44 = v43;
      if (stringCopy && [v43 hasPrefix:stringCopy])
      {
        if ([v44 isEqualToString:stringCopy])
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v21 = SPLogForSPLogCategoryQuery();
    v22 = v21;
    if (gSPLogDebugAsDefault)
    {
      v23 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v23 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v21, v23))
    {
      *buf = 138412290;
      v100 = @"Very recently created/modified";
      _os_log_impl(&_mh_execute_header, v22, v23, "%@", buf, 0xCu);
    }

    v24 = 1;
  }

  v96 = stringCopy;
  if ([v98 isEqualToString:SPUTIAppType] && ((-[__CFString isEqualToString:](v15, "isEqualToString:", SPApplicationBundleIdGeneralApplication) & 1) != 0 || -[__CFString isEqualToString:](v15, "isEqualToString:", SPApplicationBundleIdGeneralAppClips)))
  {
    v26 = [(SPSearchTopHitResult *)self makeApplicationResult:&clientData[16] dataclass:*&self->_clientData[8].var0 score:*&self->_clientData[4].var0, *&self->_clientData[6].var0];
    if (v26)
    {
      v27 = v26;
      applicationBundleIdentifier = [v26 applicationBundleIdentifier];
      v29 = [v95 containsObject:applicationBundleIdentifier];

      if (v29)
      {
        v30 = SPLogForSPLogCategoryDefault();
        v31 = v30;
        if (gSPLogDebugAsDefault)
        {
          v32 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v32 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v30, v32))
        {
          applicationBundleIdentifier2 = [v27 applicationBundleIdentifier];
          *buf = 138412290;
          v100 = applicationBundleIdentifier2;
          _os_log_impl(&_mh_execute_header, v31, v32, "disabledAppSet contains  %@", buf, 0xCu);
        }

        v25 = 0;
        goto LABEL_124;
      }

      selfCopy3 = self;
      v35 = v15;
      goto LABEL_43;
    }

    selfCopy3 = self;
    v35 = v15;
LABEL_78:
    v36 = contextCopy;
    v38 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "*warn* Couldn't determine score for nil result", buf, 2u);
    }

    v27 = 0;
    v42 = 1;
LABEL_81:

    if (v24 > [v27 topHit])
    {
      [v27 setTopHit:SSSetTopHitWithReasonString()];
    }

    contextCopy = v36;
    if ([v98 isEqualToString:@"public.calendar-event"])
    {
      title = [v27 title];
      text = [title text];
      [v27 setCompletedQuery:text];
    }

    v15 = v35;
    if (v42)
    {
      v31 = SPLogForSPLogCategoryDefault();
      v60 = gSPLogInfoAsDefault;
      if (os_log_type_enabled(v31, ((gSPLogInfoAsDefault & 1) == 0)))
      {
        v61 = sub_10004CED8(&clientData[16], 2);
        *buf = 138412546;
        v100 = v61;
        v101 = 2112;
        v102 = v35;
        _os_log_impl(&_mh_execute_header, v31, ((v60 & 1) == 0), "No result object for CoreSpotlight result, identifier:%@, bundleID:%@", buf, 0x16u);
      }

      v27 = 0;
LABEL_89:
      v25 = 0;
LABEL_123:
      stringCopy = v96;
LABEL_124:

      goto LABEL_125;
    }

    compatibilityTitle = [v27 compatibilityTitle];
    if (!compatibilityTitle)
    {
      compatibilityTitle = [v27 bundleID];
      if (([compatibilityTitle isEqualToString:SSPhotosBundleIdentifier] & 1) == 0)
      {
        sectionBundleIdentifier = [v27 sectionBundleIdentifier];
        if (!SSSectionIsSyndicatedPhotos())
        {
          isSearchToolClient = [contextCopy isSearchToolClient];

          if ((isSearchToolClient & 1) == 0)
          {
            v31 = SPLogForSPLogCategoryDefault();
            v88 = gSPLogInfoAsDefault;
            if (os_log_type_enabled(v31, ((gSPLogInfoAsDefault & 1) == 0)))
            {
              identifier = [v27 identifier];
              bundleID = [v27 bundleID];
              *buf = 138412546;
              v100 = identifier;
              v101 = 2112;
              v102 = bundleID;
              _os_log_impl(&_mh_execute_header, v31, ((v88 & 1) == 0), "No title for CoreSpotlight result, identifier:%@, bundleID:%@", buf, 0x16u);
            }

            goto LABEL_89;
          }

LABEL_95:
          [v27 setUserInput:v96];
          if (![v27 type])
          {
            v64 = sub_10004CED8(&clientData[16], 14);
            if (v64)
            {
              v65 = 4;
            }

            else
            {
              v65 = 2;
            }

            [v27 setType:v65];
          }

          v66 = sub_10004CED8(&clientData[16], 58);
          [v27 setLaunchString:v66];

          [v27 setRelatedBundleID:v97];
          [v27 setRelatedAppIdentifier:v97];
          v67 = sub_10004CED8(&clientData[16], 67);
          [v27 setLaunchDates:v67];

          v68 = sub_10004CED8(&clientData[16], 79);
          [v27 setItemProviderDataTypes:v68];

          v69 = sub_10004CED8(&clientData[16], 80);
          [v27 setItemProviderFileTypes:v69];

          if ([(__CFString *)v35 isEqualToString:SSTipsBundleIdentifier]|| ([(__CFString *)v35 hasPrefix:@"com.apple"]& 1) == 0 && [SSLocalCEP isLowEngagementBundle:v35])
          {
            v70 = [(SPSearchTopHitResult *)selfCopy3 doesQueryMatchContentForLowEngagementBundle:&clientData[16] queryContext:contextCopy];
          }

          else
          {
            if (([(__CFString *)v35 isEqualToString:SSPeopleBundleIdentifier]& 1) != 0 || ([(__CFString *)v35 isEqualToString:SSContactsBundleIdentifier]& 1) != 0)
            {
LABEL_107:
              contentType = [v27 contentType];
              if (!contentType || (v72 = contentType, [v27 contentTypeTree], v73 = objc_claimAutoreleasedReturnValue(), v73, v72, !v73))
              {
                v74 = sub_10004CED8(&clientData[16], 0);
                [v27 setContentType:v74];

                v75 = sub_10004CED8(&clientData[16], 27);
                [v27 setContentTypeTree:v75];
              }

              v31 = sub_10004CED8(&clientData[16], 85);
              [v27 setDataOwnerType:{-[NSObject integerValue](v31, "integerValue")}];
              contentCreationDate = [v27 contentCreationDate];

              if (!contentCreationDate)
              {
                v77 = sub_10004CED8(&clientData[16], 32);
                [v27 setContentCreationDate:v77];
              }

              if (v92)
              {
                searchString = [contextCopy searchString];
                [v27 setCorrectedQuery:searchString];
              }

              rankingItem = [(SPTopHitResult *)selfCopy3 rankingItem];
              [v27 setQueryId:{objc_msgSend(contextCopy, "queryIdent")}];
              sectionBundleIdentifier2 = [v27 sectionBundleIdentifier];
              if ([sectionBundleIdentifier2 isEqualToString:PRSRankingAppsBundleString])
              {
              }

              else
              {
                sectionBundleIdentifier3 = [v27 sectionBundleIdentifier];
                v82 = [sectionBundleIdentifier3 isEqualToString:PRSRankingAppClipsBundleString];

                if (!v82)
                {
LABEL_122:
                  [v27 setRankingItem:rankingItem];
                  [rankingItem score];
                  [v27 setL2score:?];
                  answerAttributes = [contextCopy answerAttributes];
                  v85 = [answerAttributes copy];
                  [v27 setAnswerAttributes:v85];

                  [v27 setHasAppTopHitShortcut:{sub_10004CF54(&clientData[16], 120) != 0}];
                  [(SPSearchTopHitResult *)selfCopy3 populateAttributesForResult:v27 withValues:&clientData[16]];
                  v27 = v27;

                  v25 = v27;
                  goto LABEL_123;
                }
              }

              if ([rankingItem didMatchRankingDescriptor:PRSRankingEscapedWords] & 1) != 0 || (objc_msgSend(rankingItem, "didMatchRankingDescriptor:", PRSRankingTextContentMatch))
              {
                v83 = 0;
              }

              else
              {
                v83 = [rankingItem didMatchRankingDescriptor:PRSRankingDisplayNameCorrectionsMatch];
              }

              [v27 setIsStaticCorrection:v83];
              goto LABEL_122;
            }

            v70 = sub_10004CF54(&clientData[16], 108) != 0;
          }

          [v27 setHasTextContentMatch:v70];
          goto LABEL_107;
        }
      }
    }

    goto LABEL_95;
  }

  selfCopy3 = self;
  if ([(__CFString *)v15 isEqualToString:SSMailBundleIdentifier])
  {
    stringCopy = [(SPSearchTopHitResult *)self makeMailResult:&clientData[16] dataclass:*&self->_clientData[8].var0 score:*&self->_clientData[4].var0 searchString:*&self->_clientData[6].var0, stringCopy];
    goto LABEL_42;
  }

  if ([(__CFString *)v15 isEqualToString:SSMessagesBundleIdentifier])
  {
    stringCopy = [(SPSearchTopHitResult *)self makeMessagesResult:&clientData[16] dataclass:*&self->_clientData[8].var0 queryContext:contextCopy score:*&self->_clientData[4].var0, *&self->_clientData[6].var0];
    goto LABEL_42;
  }

  if ([(__CFString *)v15 isEqualToString:SSPhotosBundleIdentifier])
  {
    stringCopy = [(SPSearchTopHitResult *)self makePhotosResult:&clientData[16] dataclass:*&self->_clientData[8].var0 queryContext:contextCopy score:*&self->_clientData[4].var0, *&self->_clientData[6].var0];
    goto LABEL_42;
  }

  if ([(__CFString *)v15 isEqualToString:SSPeopleBundleIdentifier])
  {
    stringCopy = [(SPSearchTopHitResult *)self makePersonResult:&clientData[16] dataclass:*&self->_clientData[8].var0 queryContext:contextCopy score:*&self->_clientData[4].var0, *&self->_clientData[6].var0];
    goto LABEL_42;
  }

  if ([(__CFString *)v15 isEqualToString:SSEventBundleIdentifier])
  {
    stringCopy = [(SPSearchTopHitResult *)self makePersonalAnswersResult:&clientData[16] dataclass:*&self->_clientData[8].var0 queryContext:contextCopy score:*&self->_clientData[4].var0 searchString:*&self->_clientData[6].var0, stringCopy];
LABEL_42:
    v27 = stringCopy;
    v35 = v15;
    [stringCopy setResultBundleId:v15];
    if (!v27)
    {
      goto LABEL_78;
    }

LABEL_43:
    v36 = contextCopy;
    v37 = SPLogForSPLogCategoryDefault();
    v38 = v37;
    if (gSPLogDebugAsDefault)
    {
      v39 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v39 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v37, v39))
    {
      score = [v27 score];
      [v27 score];
      *buf = 134218240;
      v100 = score;
      v101 = 2048;
      v102 = v41;
      _os_log_impl(&_mh_execute_header, v38, v39, "Result score: 0x%08llx 0x%08llx", buf, 0x16u);
    }

    v42 = 0;
    goto LABEL_81;
  }

  v27 = objc_opt_new();
  [v27 setScore:{*&self->_clientData[4].var0, *&self->_clientData[6].var0}];
  [v27 setProtectionClass:*&self->_clientData[8].var0];
  [(SPSearchTopHitResult *)self populateCoreSpotlightResult:v27 values:&clientData[16] bundleID:v15 queryContext:contextCopy];
  if (sub_10004B610(v27))
  {
    v45 = off_1000A7FB0[0];

    if ([v94 unsignedIntValue])
    {
      [v27 setSectionBundleIdentifier:SSSectionIdentifierSyndicatedPhotos];
    }

    v46 = SPLogForSPLogCategoryDefault();
    v47 = v46;
    if (gSPLogDebugAsDefault)
    {
      v48 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v48 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v46, v48))
    {
      *buf = 138412546;
      v100 = v45;
      v101 = 2112;
      v102 = off_1000A7FB0[0];
      _os_log_impl(&_mh_execute_header, v47, v48, "remap %@ to %@", buf, 0x16u);
    }

LABEL_69:
    [v27 setBundleID:v45];
    sectionBundleIdentifier4 = [v27 sectionBundleIdentifier];
    v54 = sectionBundleIdentifier4;
    if (sectionBundleIdentifier4)
    {
      v55 = sectionBundleIdentifier4;
    }

    else
    {
      v55 = v45;
    }

    [v27 setSectionBundleIdentifier:v55];

    [v27 setApplicationBundleIdentifier:v45];
    if ([(__CFString *)v45 isEqualToString:off_1000A7FC0]&& v97)
    {
      [v27 setApplicationBundleIdentifier:v97];
    }

    if ([(__CFString *)v45 isEqualToString:PRSRankingPodcastsBundleString])
    {
      v56 = sub_10004BAE0(&clientData[16], 31);
      [v27 setStringForDedupe:v56];
      v57 = sub_10004BAE0(&clientData[16], 50);
      [v27 setDomainIdentifier:v57];
    }

    v35 = v45;
    if (!v27)
    {
      goto LABEL_78;
    }

    goto LABEL_43;
  }

  userActivityRequiredString = [v27 userActivityRequiredString];
  v50 = [userActivityRequiredString length];

  if (!v50 || (sub_10004BAE0(&clientData[16], 87), v51 = objc_claimAutoreleasedReturnValue(), v52 = [v51 isEqualToString:off_1000A7FB8[0]], v51, (v52 & 1) == 0))
  {
    v45 = v15;
    goto LABEL_69;
  }

  v25 = 0;
LABEL_125:

  disabledApps = v93;
  v13 = v95;
LABEL_126:

  return v25;
}

- (void)populateAttributesForResult:(id)result withValues:(__packedFieldArray *)values
{
  resultCopy = result;
  v121 = sub_10004CF54(values, 49);
  v70 = sub_10004C634(values, 90);
  v6 = sub_10004CED8(values, 57);
  if (v6)
  {
    v7 = v6;
    [v6 doubleValue];
    v227 = [NSNumber numberWithDouble:v8 * 1000000.0];
  }

  else
  {
    v227 = 0;
  }

  v9 = sub_10004C1A4(values, 45);
  v225 = sub_10004C1A4(values, 374);
  v224 = sub_10004C1A4(values, 59);
  v223 = sub_10004CED8(values, 153);
  v222 = sub_10004C1A4(values, 155);
  v221 = sub_10004C1A4(values, 372);
  v220 = sub_10004C1A4(values, 159);
  v219 = sub_10004C1A4(values, 158);
  v218 = sub_10004C1A4(values, 47);
  v217 = sub_10004C1A4(values, 66);
  v216 = sub_10004CED8(values, 152);
  v215 = sub_10004C1A4(values, 35);
  v214 = sub_10004C1A4(values, 5);
  v10 = sub_10004C1A4(values, 39);
  v119 = sub_10004CF54(values, 41);
  v11 = sub_10004C1A4(values, 129);
  v211 = sub_10004CED8(values, 186);
  v210 = sub_10004C1A4(values, 162);
  v209 = sub_10004C0D8(values, 131);
  v208 = sub_10004C0D8(values, 132);
  v207 = sub_10004CED8(values, 188);
  v206 = sub_10004CED8(values, 134);
  v205 = sub_10004C0D8(values, 185);
  v204 = sub_10004CED8(values, 187);
  v203 = sub_10004C1A4(values, 40);
  v202 = sub_10004C1A4(values, 373);
  v201 = sub_10004C1A4(values, 347);
  v200 = sub_10004C1A4(values, 48);
  v199 = sub_10004C1A4(values, 150);
  v12 = values->var0[5];
  if ((v12 & 0x1000000000000000) == 0 || (v13 = COERCE_DOUBLE(vaddvq_s64(vpadalq_u32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(*&values->var0[1])))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(*&values->var0[3])))))), (v14 = *(values->var3[(LOBYTE(v13) + vaddlv_u8(vcnt_s8(values->var0[0])) + vaddlv_u8(vcnt_s8((v12 & 0xFFFFFFFFFFFFFFFLL))))] + 4)) == 0))
  {
    v228 = 0;
    goto LABEL_33;
  }

  v15 = sub_10004D3E0((v14 + 32), *(v14 + 64), v13);
  v17 = v15;
  v18 = *(v14 + 64);
  v19 = v18 == 16 || v18 == 1;
  if (!v19 || ([v15 isEqualToString:@"kMDItemTextContent"] & 1) == 0)
  {
    v20 = v11;
    v21 = sub_10004D3E0((v14 + 80), *(v14 + 112), v16);
    if (!v21)
    {
      v228 = 0;
LABEL_31:
      v11 = v20;
      goto LABEL_32;
    }

    v22 = v21;
    v228 = 0;
    v23 = *(v14 + 112);
    if (v23 > 16)
    {
      if (v23 != 19 && v23 != 17)
      {
        goto LABEL_30;
      }

      v25 = v21;
    }

    else
    {
      if (v23 != 1 && v23 != 16)
      {
        goto LABEL_30;
      }

      v232 = v21;
      v25 = [NSArray arrayWithObjects:&v232 count:1];
    }

    v228 = v25;
LABEL_30:

    goto LABEL_31;
  }

  v228 = 0;
LABEL_32:

LABEL_33:
  v212 = v11;
  v213 = v10;
  v198 = sub_10004BAE0(values, 164);
  v197 = sub_10004CED8(values, 165);
  v196 = sub_10004CED8(values, 163);
  v195 = sub_10004CED8(values, 195);
  v194 = sub_10004CED8(values, 167);
  v193 = sub_10004BAE0(values, 168);
  v192 = sub_10004CED8(values, 169);
  v191 = sub_10004BAE0(values, 170);
  v190 = sub_10004CED8(values, 171);
  v189 = sub_10004CED8(values, 172);
  v188 = sub_10004BAE0(values, 175);
  v187 = sub_10004BAE0(values, 174);
  v186 = sub_10004C3D8(values, 176);
  v185 = sub_10004C300(values, 28);
  v184 = sub_10004C300(values, 32);
  v183 = sub_10004C300(values, 29);
  v182 = sub_10004C300(values, 18);
  v181 = sub_10004C300(values, 36);
  v69 = sub_10004C300(values, 9);
  v180 = sub_10004C300(values, 25);
  v231 = sub_10004C300(values, 82);
  v179 = sub_10004C300(values, 17);
  v178 = sub_10004CED8(values, 151);
  v177 = sub_10004CED8(values, 154);
  v176 = sub_10004CED8(values, 181);
  v175 = sub_10004CED8(values, 19);
  v174 = sub_10004CED8(values, 42);
  v173 = sub_10004CED8(values, 43);
  v27 = sub_10004CF54(values, 44);
  v172 = sub_10004CED8(values, 16);
  v171 = sub_10004BAE0(values, 26);
  v170 = sub_10004BAE0(values, 37);
  v169 = sub_10004BAE0(values, 70);
  v168 = sub_10004BAE0(values, 97);
  v167 = sub_10004BAE0(values, 92);
  v166 = sub_10004BAE0(values, 13);
  v165 = sub_10004BAE0(values, 31);
  v229 = sub_10004BAE0(values, 7);
  v164 = sub_10004BAE0(values, 1);
  v163 = sub_10004BAE0(values, 71);
  v162 = sub_10004BAE0(values, 102);
  v161 = sub_10004BAE0(values, 20);
  v160 = sub_10004BAE0(values, 94);
  v159 = sub_10004BAE0(values, 91);
  v158 = sub_10004BAE0(values, 55);
  v157 = sub_10004BAE0(values, 72);
  v156 = sub_10004BAE0(values, 6);
  v155 = sub_10004BAE0(values, 46);
  v154 = sub_10004BAE0(values, 4);
  v153 = sub_10004BAE0(values, 178);
  v152 = sub_10004BAE0(values, 179);
  v151 = sub_10004BAE0(values, 34);
  v150 = sub_10004BAE0(values, 182);
  v149 = sub_10004CED8(values, 23);
  v148 = sub_10004CED8(values, 24);
  v147 = sub_10004BAE0(values, 12);
  v146 = sub_10004BAE0(values, 2);
  v145 = sub_10004BAE0(values, 101);
  v144 = sub_10004BAE0(values, 14);
  v143 = sub_10004BAE0(values, 11);
  v28 = sub_10004BAE0(values, 0);
  v142 = sub_10004CED8(values, 56);
  v141 = sub_10004CED8(values, 395);
  v140 = sub_10004C1A4(values, 396);
  v230 = sub_10004BAE0(values, 397);
  if (!v230)
  {
    v230 = sub_10004BAE0(values, 149);
  }

  v226 = v9;
  v139 = sub_10004CED8(values, 103);
  v138 = sub_10004C300(values, 398);
  v137 = sub_10004CED8(values, 183);
  v136 = sub_10004CED8(values, 341);
  v135 = sub_10004CED8(values, 200);
  v134 = sub_10004CED8(values, 201);
  v133 = sub_10004CED8(values, 139);
  v132 = sub_10004BAE0(values, 50);
  v29 = sub_10004CF54(values, 358);
  v131 = sub_10004BAE0(values, 197);
  v130 = sub_10004C1A4(values, 196);
  v129 = sub_10004CED8(values, 198);
  v128 = sub_10004CED8(values, 199);
  v30 = sub_10004CF54(values, 202);
  v31 = sub_10004CF54(values, 203);
  v127 = sub_10004BAE0(values, 204);
  v126 = sub_10004BAE0(values, 205);
  v125 = sub_10004BAE0(values, 206);
  v124 = sub_10004BAE0(values, 207);
  v123 = sub_10004BAE0(values, 208);
  if (_os_feature_enabled_impl())
  {
    resultBundleId = [resultCopy resultBundleId];
    v33 = resultCopy;
    if (resultBundleId && (v34 = resultBundleId, [v33 resultBundleId], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "isEqualToString:", SSEventBundleIdentifier), v35, v34, v36))
    {
      resultCopy = v33;
      personalAnswerString = [v33 personalAnswerString];

      v229 = personalAnswerString;
    }

    else
    {
      resultCopy = v33;
    }
  }

  v68 = v31 != 0;
  v61 = v29 != 0;
  v38 = v27 != 0;
  v39 = v119 != 0;
  v40 = v121 != 0;
  v41 = sub_10004C1A4(values, 211);
  v122 = sub_10004BAE0(values, 212);
  v120 = sub_10004BAE0(values, 213);
  v118 = sub_10004BAE0(values, 214);
  v117 = sub_10004BAE0(values, 216);
  v116 = sub_10004CED8(values, 217);
  v115 = sub_10004C1A4(values, 218);
  v114 = sub_10004C1A4(values, 219);
  v113 = sub_10004C1A4(values, 221);
  v112 = sub_10004C1A4(values, 222);
  v111 = sub_10004C1A4(values, 223);
  v110 = sub_10004BAE0(values, 224);
  v109 = sub_10004BAE0(values, 225);
  v108 = sub_10004BAE0(values, 226);
  v107 = sub_10004CED8(values, 227);
  v106 = sub_10004CED8(values, 228);
  v105 = sub_10004BAE0(values, 229);
  v104 = sub_10004BAE0(values, 230);
  v103 = sub_10004BAE0(values, 232);
  v102 = sub_10004BAE0(values, 233);
  v101 = sub_10004BAE0(values, 234);
  v100 = sub_10004BAE0(values, 235);
  v99 = sub_10004BAE0(values, 236);
  v98 = sub_10004BAE0(values, 237);
  v97 = sub_10004BAE0(values, 238);
  v96 = sub_10004BAE0(values, 239);
  v95 = sub_10004BAE0(values, 240);
  v94 = sub_10004BAE0(values, 241);
  v93 = sub_10004BAE0(values, 242);
  v92 = sub_10004BAE0(values, 243);
  v91 = sub_10004BAE0(values, 244);
  v90 = sub_10004BAE0(values, 245);
  v89 = sub_10004BAE0(values, 248);
  v88 = sub_10004BAE0(values, 249);
  v87 = sub_10004BAE0(values, 258);
  v86 = sub_10004BAE0(values, 259);
  v85 = sub_10004BAE0(values, 260);
  v84 = sub_10004BAE0(values, 261);
  v83 = sub_10004BAE0(values, 262);
  v82 = sub_10004BAE0(values, 210);
  v81 = sub_10004BAE0(values, 263);
  v80 = sub_10004BAE0(values, 266);
  v79 = sub_10004CED8(values, 271);
  v78 = sub_10004BAE0(values, 272);
  v77 = sub_10004BAE0(values, 273);
  v76 = sub_10004BAE0(values, 274);
  v75 = sub_10004BAE0(values, 275);
  v74 = sub_10004BAE0(values, 276);
  v73 = sub_10004C1A4(values, 123);
  v72 = sub_10004BAE0(values, 141);
  v71 = sub_10004C1A4(values, 130);
  v67 = sub_10004C1A4(values, 135);
  v66 = sub_10004C1A4(values, 138);
  v65 = sub_10004BAE0(values, 279);
  v64 = sub_10004C3D8(values, 280);
  v63 = sub_10004BAE0(values, 294);
  v62 = sub_10004BAE0(values, 83);
  contentType = [resultCopy contentType];
  v43 = contentType;
  if (contentType)
  {
    v44 = contentType;
  }

  else
  {
    v44 = v28;
  }

  v45 = v44;

  v46 = objc_opt_new();
  [v46 beginDictionary];
  v47 = [NSNumber numberWithBool:v40];
  [v46 encodeObject:v47 withKey:MDItemIsAllDay];

  v48 = [NSNumber numberWithBool:v70];
  [v46 encodeObject:v48 withKey:MDItemBackgroundRunnable];

  [v46 encodeObject:v227 withKey:MDItemFileSize];
  [v46 encodeObject:v142 withKey:MDItemNumberOfPages];
  [v46 encodeObject:v226 withKey:MDItemActionIdentifiers];
  [v46 encodeObject:v225 withKey:MDItemAdditionalRecipientEmailAddresses];
  [v46 encodeObject:v171 withKey:MDItemAlbum];
  [v46 encodeObject:v224 withKey:MDItemAlternateNames];
  [v46 encodeObject:v177 withKey:MDItemApprovedStatus];
  [v46 encodeObject:v178 withKey:MDItemApprovedStatusString];
  [v46 encodeObject:v223 withKey:MDItemApproverContactDSID];
  [v46 encodeObject:v222 withKey:MDItemApprovers];
  [v46 encodeObject:v170 withKey:MDItemArtist];
  [v46 encodeObject:v221 withKey:MDItemAttachmentNames];
  [v46 encodeObject:v220 withKey:MDItemAttachmentPaths];
  [v46 encodeObject:v219 withKey:MDItemAttachmentTypes];
  [v46 encodeObject:v217 withKey:MDItemAuthorAddresses];
  [v46 encodeObject:v218 withKey:MDItemAuthorContactIdentifiers];
  [v46 encodeObject:v216 withKey:MDItemAuthorContactDSID];
  [v46 encodeObject:v215 withKey:MDItemAuthorEmailAddresses];
  [v46 encodeObject:v214 withKey:MDItemAuthors];
  [v46 encodeObject:v176 withKey:MDItemBackgroundColor];
  [v46 encodeObject:v169 withKey:MDItemCalendarDelegateIdentifier];
  [v46 encodeObject:v185 withKey:MDItemCompletionDate];
  [v46 encodeObject:v166 withKey:MDItemContentURL];
  [v46 encodeObject:v182 withKey:MDItemEndDate];
  [v46 encodeObject:v181 withKey:MDItemExpirationDate];
  [v46 encodeObject:v168 withKey:MDItemContactIdentifier];
  [v46 encodeObject:v167 withKey:MDItemContainerDisplayName];
  [v46 encodeObject:v184 withKey:MDItemContentCreationDate];
  [v46 encodeObject:v165 withKey:MDItemDescription];
  [v46 encodeObject:v229 withKey:MDItemDisplayName];
  [v46 encodeObject:v183 withKey:MDItemDueDate];
  [v46 encodeObject:v175 withKey:MDItemDurationSeconds];
  [v46 encodeObject:v164 withKey:MDItemIdentifier];
  [v46 encodeObject:v163 withKey:MDItemKind];
  [v46 encodeObject:v174 withKey:MDItemLatitude];
  [v46 encodeObject:v173 withKey:MDItemLongitude];
  v49 = [NSNumber numberWithBool:v38];
  [v46 encodeObject:v49 withKey:MDItemSupportsNavigation];

  [v46 encodeObject:v180 withKey:MDItemContentModificationDate];
  [v46 encodeObject:v162 withKey:MDItemMessageType];
  [v46 encodeObject:v161 withKey:MDItemNamedLocation];
  [v46 encodeObject:v160 withKey:MDItemPersonIdentifier];
  [v46 encodeObject:v213 withKey:MDItemPhoneNumbers];
  v50 = [NSNumber numberWithBool:v39];
  [v46 encodeObject:v50 withKey:MDItemSupportsPhoneCall];

  [v46 encodeObject:v212 withKey:MDItemPhotosPeopleNames];
  [v46 encodeObject:v211 withKey:MDItemPhotosPeopleNamesIndex];
  [v46 encodeObject:v210 withKey:MDItemPhotosPeoplePersonIdentifiers];
  [v46 encodeObject:v204 withKey:MDItemPhotosSceneClassificationLabelsIndex];
  [v46 encodeObject:v205 withKey:MDItemPhotosSceneClassificationSynonymsCounts];
  [v46 encodeObject:v207 withKey:MDItemPhotosSceneClassificationSynonymsIndex];
  [v46 encodeObject:v206 withKey:MDItemPhotosSceneClassificationSynonyms];
  [v46 encodeObject:v209 withKey:MDItemPhotosSceneClassificationIdentifiers];
  [v46 encodeObject:v208 withKey:MDItemPhotosSceneClassificationTypes];
  [v46 encodeObject:v203 withKey:MDItemEmailAddresses];
  [v46 encodeObject:v159 withKey:MDItemPunchoutLabel];
  [v46 encodeObject:v202 withKey:MDItemPrimaryRecipientEmailAddresses];
  [v46 encodeObject:v158 withKey:MDItemRatingDescription];
  [v46 encodeObject:v172 withKey:MDItemStarRating];
  [v46 encodeObject:v201 withKey:MDItemRecipients];
  [v46 encodeObject:v200 withKey:MDItemRecipientContactIdentifiers];
  [v46 encodeObject:v199 withKey:MDItemRelatedObjects];
  [v46 encodeObject:v157 withKey:MDItemRelatedAppBundleIdentifier];
  [v46 encodeObject:v196 withKey:MDItemRunnableShortcutsData];
  [v46 encodeObject:v198 withKey:MDItemRunnableShortcutsAccessorySymbol];
  [v46 encodeObject:v197 withKey:MDItemRunnableShortcutsDisplayOrder];
  [v46 encodeObject:v194 withKey:MDItemRunnableShortcutsIsAppShortcutTopHit];
  [v46 encodeObject:v193 withKey:MDItemRunnableShortcutsAssociatedSettingsPreference];
  [v46 encodeObject:v192 withKey:MDItemRunnableShortcutsEntityThumbnailDisplayStyle];
  [v46 encodeObject:v191 withKey:MDItemRunnableShortcutsActionIdentifier];
  [v46 encodeObject:v190 withKey:MDItemRunnableShortcutsIsAppTopHitExclusive];
  [v46 encodeObject:v189 withKey:MDItemRunnableShortcutsTopHitBadge];
  [v46 encodeObject:v188 withKey:MDItemRunnableShortcutsLNPropertyIdentifier];
  [v46 encodeObject:v187 withKey:MDItemRunnableShortcutsBiomeStreamIdentifier];
  [v46 encodeObject:v186 withKey:MDItemShortcutsToolIconData];
  [v46 encodeObject:v155 withKey:MDItemSharedItemContentType];
  [v46 encodeObject:v156 withKey:MDItemSnippet];
  [v46 encodeObject:v179 withKey:MDItemStartDate];
  [v46 encodeObject:v154 withKey:MDItemSubject];
  [v46 encodeObject:v153 withKey:MDItemThumbnailBundleID];
  [v46 encodeObject:v152 withKey:MDItemThumbnailContentType];
  [v46 encodeObject:v151 withKey:MDItemThumbnailDataPath];
  [v46 encodeObject:v136 withKey:MDItemThumbnailData];
  [v46 encodeObject:v150 withKey:MDItemThumbnailSymbolName];
  [v46 encodeObject:v149 withKey:MDItemThumbnailURL];
  [v46 encodeObject:v195 withKey:MDItemUserActivityData];
  [v46 encodeObject:v148 withKey:MDItemDarkThumbnailURL];
  [v46 encodeObject:v147 withKey:MDItemTitle];
  [v46 encodeObject:v228 withKey:@"SSAttributeTopMatchedStrings"];
  [v46 encodeObject:v146 withKey:MDItemUniqueIdentifier];
  [v46 encodeObject:v145 withKey:MDItemURL];
  [v46 encodeObject:v144 withKey:MDItemUserActivityRequiredString];
  [v46 encodeObject:v143 withKey:MDItemUserActivityType];
  [v46 encodeObject:v45 withKey:MDItemContentType];

  [v46 encodeObject:v141 withKey:MDItemHasLPMedia];
  [v46 encodeObject:v140 withKey:MDItemLPMediaPaths];
  [v46 encodeObject:v230 withKey:MDItemGroupPhotoPath];
  [v46 encodeObject:v139 withKey:MDItemSyndicationStatus];
  [v46 encodeObject:v138 withKey:MDItemSyndicatedContentServerDate];
  [v46 encodeObject:v137 withKey:MDItemCachedViewData];
  [v46 encodeObject:v135 withKey:MDItemPhotosKeywordsIndex];
  [v46 encodeObject:v134 withKey:MDItemPhotosLocationKeywordsIndex];
  [v46 encodeObject:v133 withKey:MDItemPhotosLocationKeywords];
  [v46 encodeObject:v132 withKey:MDItemDomainIdentifier];
  [v46 encodeObject:v131 withKey:MDItemComment];
  [v46 encodeObject:v130 withKey:MDItemHashtags];
  [v46 encodeObject:v129 withKey:MDItemReminderFlagged];
  [v46 encodeObject:v128 withKey:MDItemReminderRecurring];
  v51 = [NSNumber numberWithBool:v61];
  [v46 encodeObject:v51 withKey:MDItemContentRating];

  [v46 encodeObject:v127 withKey:MDItemNoteFolderName];
  [v46 encodeObject:v126 withKey:MDItemNoteAccountName];
  v52 = [NSNumber numberWithBool:v30 != 0];
  [v46 encodeObject:v52 withKey:MDItemNoteIsShared];

  v53 = [NSNumber numberWithBool:v68];
  [v46 encodeObject:v53 withKey:MDItemNoteIsLocked];

  [v46 encodeObject:v125 withKey:MDItemPhoneCallStatus];
  [v46 encodeObject:v124 withKey:MDItemPhoneCallBackURL];
  [v46 encodeObject:v123 withKey:MDItemPhoneCallType];
  [v46 encodeObject:v41 withKey:MDItemAdditionalRecipients];
  [v46 encodeObject:v122 withKey:MDItemCity];
  [v46 encodeObject:v120 withKey:MDItemCountry];
  [v46 encodeObject:v118 withKey:MDItemCreator];
  [v46 encodeObject:v117 withKey:MDItemFullyFormattedAddress];
  [v46 encodeObject:v116 withKey:MDItemHTMLContentData];
  [v46 encodeObject:v115 withKey:MDItemInstantMessageAddresses];
  [v46 encodeObject:v114 withKey:MDItemPhotosPeopleContactIdentifiers];
  [v46 encodeObject:v113 withKey:MDItemPrimaryRecipients];
  [v46 encodeObject:v112 withKey:MDItemRecipientAddresses];
  [v46 encodeObject:v111 withKey:MDItemRecipientEmailAddresses];
  [v46 encodeObject:v110 withKey:MDItemStateOrProvince];
  [v46 encodeObject:v109 withKey:MDItemTextContent];
  [v46 encodeObject:v108 withKey:MDItemMessagesChatId];
  [v46 encodeObject:v107 withKey:MDItemInterestingDate];
  [v46 encodeObject:v106 withKey:MDItemPassbookTransactionAmount];
  [v46 encodeObject:v105 withKey:MDItemPassbookTransactionCurrencyCode];
  [v46 encodeObject:v104 withKey:MDMailMessageID];
  [v46 encodeObject:v103 withKey:MDItemEventType];
  [v46 encodeObject:v102 withKey:MDItemEventFlightDesignator];
  [v46 encodeObject:v101 withKey:MDItemEventFlightNumber];
  [v46 encodeObject:v100 withKey:MDItemEventFlightCheckInUrl];
  [v46 encodeObject:v99 withKey:MDItemEventFlightBookingInfoUrl];
  [v46 encodeObject:v98 withKey:MDItemEventFlightCarrier];
  [v46 encodeObject:v97 withKey:MDItemEventFlightCarrierCode];
  [v46 encodeObject:v96 withKey:MDItemEventFlightArrivalTimeZone];
  [v46 encodeObject:v95 withKey:MDItemEventFlightDepartureTimeZone];
  [v46 encodeObject:v94 withKey:MDItemEventFlightArrivalAirportCode];
  [v46 encodeObject:v93 withKey:MDItemEventFlightArrivalAirportName];
  [v46 encodeObject:v92 withKey:MDItemEventFlightDepartureAirportCode];
  [v46 encodeObject:v91 withKey:MDItemEventFlightDepartureAirportName];
  [v46 encodeObject:v90 withKey:MDItemEventFlightConfirmationNumber];
  [v46 encodeObject:v89 withKey:MDItemEventFlightArrivalTerminal];
  [v46 encodeObject:v88 withKey:MDItemEventFlightDepartureTerminal];
  [v46 encodeObject:v87 withKey:MDItemEventHotelReservationId];
  [v46 encodeObject:v86 withKey:MDItemEventHotelUnderName];
  [v46 encodeObject:v85 withKey:MDItemEventHotelTimeZone];
  [v46 encodeObject:v84 withKey:MDItemEventHotelModifyReservationUrl];
  [v46 encodeObject:v83 withKey:MDItemEventHotelReservationForName];
  [v46 encodeObject:v82 withKey:MDItemEventHotelReservationForAddress];
  [v46 encodeObject:v81 withKey:MDItemEventHotelReservationForTelephone];
  [v46 encodeObject:v80 withKey:MDItemEventRestaurantPartySize];
  [v46 encodeObject:v79 withKey:MDItemMailCategories];
  [v46 encodeObject:v78 withKey:MDItemAppEntityInstanceId];
  [v46 encodeObject:v77 withKey:MDItemAppEntityType];
  [v46 encodeObject:v76 withKey:MDItemAppEntityTitle];
  [v46 encodeObject:v75 withKey:MDItemAppEntitySubtitle];
  [v46 encodeObject:v74 withKey:MDItemSafariCloudTabDeviceName];
  [v46 encodeObject:v73 withKey:MDItemPhotosBusinessNames];
  [v46 encodeObject:v72 withKey:MDItemPhotosDescription];
  [v46 encodeObject:v71 withKey:MDItemPhotosSceneClassificationLabels];
  [v46 encodeObject:? withKey:?];
  [v46 encodeObject:? withKey:?];
  [v46 encodeObject:? withKey:?];
  [v46 encodeObject:? withKey:?];
  [v46 encodeObject:? withKey:?];
  [v46 encodeObject:? withKey:?];
  [v46 endDictionary];
  data = [v46 data];
  v55 = [data copy];
  [resultCopy setAttributeData:v55];

  lastUsedDate = [resultCopy lastUsedDate];
  v57 = lastUsedDate;
  if (v231)
  {
    v58 = v231;
  }

  else
  {
    v58 = v69;
  }

  if (lastUsedDate)
  {
    v59 = lastUsedDate;
  }

  else
  {
    v59 = v58;
  }

  [resultCopy setLastUsedDate:v59];

  if (v231 && v69)
  {
    v60 = [v231 laterDate:v69];
    [resultCopy setLastUsedDate:v60];
  }
}

@end