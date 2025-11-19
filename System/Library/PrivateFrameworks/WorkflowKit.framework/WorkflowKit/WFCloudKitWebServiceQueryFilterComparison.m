@interface WFCloudKitWebServiceQueryFilterComparison
- (id)stringRepresentationWithRecordType:(id)a3;
@end

@implementation WFCloudKitWebServiceQueryFilterComparison

- (id)stringRepresentationWithRecordType:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [(WFCloudKitWebServiceQueryFilterComparison *)self recordKey];
  v7 = [v4 stringWithFormat:@"%@.%@", v5, v6];

  v8 = [(WFCloudKitWebServiceQueryFilterComparison *)self value];
  v9 = [(WFCloudKitWebServiceQueryFilterComparison *)self type];
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        goto LABEL_14;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ IN (%@)", v7, v8];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %@", v7, v8];
    }
    self = ;
  }

  else
  {
    switch(v9)
    {
      case 2:
        v12 = MEMORY[0x1E696AEC0];
        v11 = [v8 lowercaseString];
        [v12 stringWithFormat:@"tokenize_set(%@, %@)", v7, v11];
        break;
      case 3:
        v13 = MEMORY[0x1E696AEC0];
        v11 = [v8 lowercaseString];
        [v13 stringWithFormat:@"tokenize_phrase(%@, %@)", v7, v11];
        break;
      case 4:
        v10 = MEMORY[0x1E696AEC0];
        v11 = [v8 lowercaseString];
        [v10 stringWithFormat:@"prefix(%@, %@)", v7, v11];
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