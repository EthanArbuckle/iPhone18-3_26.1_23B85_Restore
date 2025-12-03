@interface PLPhotosKnowledgeGraphAvailabilityStatus
- (PLPhotosKnowledgeGraphAvailabilityStatus)initWithDictionary:(id)dictionary;
@end

@implementation PLPhotosKnowledgeGraphAvailabilityStatus

- (PLPhotosKnowledgeGraphAvailabilityStatus)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PLPhotosKnowledgeGraphAvailabilityStatus;
  v5 = [(PLPhotosKnowledgeGraphAvailabilityStatus *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"graphStatusDescription"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"No status description";
    }

    objc_storeStrong(&v5->_statusDescription, v8);

    v9 = [dictionaryCopy objectForKeyedSubscript:@"graphIsReadyStatus"];
    if (v9)
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"graphIsReadyStatus"];
      if ([v10 BOOLValue])
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }

    v5->_availability = v11;
    v12 = v5;
  }

  return v5;
}

@end