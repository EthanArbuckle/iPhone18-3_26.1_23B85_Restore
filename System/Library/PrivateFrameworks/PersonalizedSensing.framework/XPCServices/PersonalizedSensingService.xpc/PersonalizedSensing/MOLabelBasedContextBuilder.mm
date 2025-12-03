@interface MOLabelBasedContextBuilder
- (id)generateContextStringFromBundleContent:(id)content;
- (id)generateContextStringsFromBundleContents:(id)contents;
@end

@implementation MOLabelBasedContextBuilder

- (id)generateContextStringsFromBundleContents:(id)contents
{
  contentsCopy = contents;
  v5 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = contentsCopy;
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
            bundleContentIdentifier = [v11 bundleContentIdentifier];
            [v5 setObject:v13 forKey:bundleContentIdentifier];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)generateContextStringFromBundleContent:(id)content
{
  contentCopy = content;
  suggestionLabel = [contentCopy suggestionLabel];

  if (suggestionLabel)
  {
    v5 = [MOContextString alloc];
    v6 = +[NSUUID UUID];
    suggestionLabel2 = [contentCopy suggestionLabel];
    v8 = [suggestionLabel2 copy];
    suggestionLabel = [(MOContextString *)v5 initWithIdentifier:v6 string:v8];

    [(MOContextString *)suggestionLabel setSource:1];
    [(MOContextString *)suggestionLabel setAccuracy:1.0];
    [(MOContextString *)suggestionLabel setSatisfaction:1.0];
    if ([contentCopy hasPersonName])
    {
      [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 1];
    }

    if ([contentCopy peopleClassification])
    {
      [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 2];
      if ([contentCopy peopleClassification] == 1)
      {
        [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 0x200];
      }

      if ([contentCopy peopleClassification] == 2)
      {
        [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 0x400];
      }

      if ([contentCopy peopleClassification] == 3)
      {
        [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 0x800];
      }

      if ([contentCopy peopleClassification] == 4)
      {
        [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 0x1000];
      }

      if ([contentCopy peopleClassification] == 5)
      {
        [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 0x2000];
      }
    }

    if ([contentCopy hasPlaceName])
    {
      [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 4];
    }

    if ([contentCopy hasCityName])
    {
      [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 8];
    }

    if ([contentCopy photoTrait])
    {
      [(MOContextString *)suggestionLabel setContentType:[(MOContextString *)suggestionLabel contentType]| 0x100];
    }
  }

  return suggestionLabel;
}

@end