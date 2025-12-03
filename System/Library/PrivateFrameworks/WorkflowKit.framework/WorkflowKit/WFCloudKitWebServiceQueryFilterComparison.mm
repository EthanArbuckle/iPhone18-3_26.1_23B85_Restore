@interface WFCloudKitWebServiceQueryFilterComparison
- (id)stringRepresentationWithRecordType:(id)type;
@end

@implementation WFCloudKitWebServiceQueryFilterComparison

- (id)stringRepresentationWithRecordType:(id)type
{
  v4 = MEMORY[0x1E696AEC0];
  typeCopy = type;
  recordKey = [(WFCloudKitWebServiceQueryFilterComparison *)self recordKey];
  v7 = [v4 stringWithFormat:@"%@.%@", typeCopy, recordKey];

  value = [(WFCloudKitWebServiceQueryFilterComparison *)self value];
  type = [(WFCloudKitWebServiceQueryFilterComparison *)self type];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_14;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ IN (%@)", v7, value];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", v7, value];
    }
    self = ;
  }

  else
  {
    switch(type)
    {
      case 2:
        v12 = MEMORY[0x1E696AEC0];
        lowercaseString = [value lowercaseString];
        [v12 stringWithFormat:@"tokenize_set(%@, %@)", v7, lowercaseString];
        break;
      case 3:
        v13 = MEMORY[0x1E696AEC0];
        lowercaseString = [value lowercaseString];
        [v13 stringWithFormat:@"tokenize_phrase(%@, %@)", v7, lowercaseString];
        break;
      case 4:
        v10 = MEMORY[0x1E696AEC0];
        lowercaseString = [value lowercaseString];
        [v10 stringWithFormat:@"prefix(%@, %@)", v7, lowercaseString];
        break;
      default:
        goto LABEL_14;
    }
    self = ;
  }

LABEL_14:

  return self;
}

@end