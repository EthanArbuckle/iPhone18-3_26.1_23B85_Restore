@interface MOLabelBasedContextBuilder
- (id)generateContextStringFromBundleContent:(id)a3;
- (id)generateContextStringsFromBundleContents:(id)a3;
@end

@implementation MOLabelBasedContextBuilder

- (id)generateContextStringsFromBundleContents:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 bundleType] == 2)
        {
          v12 = [(MOLabelBasedContextBuilder *)self generateContextStringFromBundleContent:v11];
          if (v12)
          {
            v13 = [NSArray arrayWithObject:v12];
            v14 = [v11 bundleContentIdentifier];
            [v5 setObject:v13 forKey:v14];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)generateContextStringFromBundleContent:(id)a3
{
  v3 = a3;
  v4 = [v3 suggestionLabel];

  if (v4)
  {
    v5 = [MOContextString alloc];
    v6 = +[NSUUID UUID];
    v7 = [v3 suggestionLabel];
    v8 = [v7 copy];
    v4 = [(MOContextString *)v5 initWithIdentifier:v6 string:v8];

    [(MOContextString *)v4 setSource:1];
    [(MOContextString *)v4 setAccuracy:1.0];
    [(MOContextString *)v4 setSatisfaction:1.0];
    if ([v3 hasPersonName])
    {
      [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 1];
    }

    if ([v3 peopleClassification])
    {
      [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 2];
      if ([v3 peopleClassification] == 1)
      {
        [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 0x200];
      }

      if ([v3 peopleClassification] == 2)
      {
        [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 0x400];
      }

      if ([v3 peopleClassification] == 3)
      {
        [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 0x800];
      }

      if ([v3 peopleClassification] == 4)
      {
        [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 0x1000];
      }

      if ([v3 peopleClassification] == 5)
      {
        [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 0x2000];
      }
    }

    if ([v3 hasPlaceName])
    {
      [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 4];
    }

    if ([v3 hasCityName])
    {
      [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 8];
    }

    if ([v3 photoTrait])
    {
      [(MOContextString *)v4 setContentType:[(MOContextString *)v4 contentType]| 0x100];
    }
  }

  return v4;
}

@end