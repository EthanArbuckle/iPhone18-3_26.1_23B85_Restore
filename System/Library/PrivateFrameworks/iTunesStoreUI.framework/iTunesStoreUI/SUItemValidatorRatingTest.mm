@interface SUItemValidatorRatingTest
- (BOOL)validateItems:(id)items error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUItemValidatorRatingTest

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = SUItemValidatorRatingTest;
  return [(SUItemValidatorTest *)&v4 copyWithZone:zone];
}

- (BOOL)validateItems:(id)items error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(items);
      }

      contentRating = [*(*(&v12 + 1) + 8 * v9) contentRating];
      if ([contentRating shouldHideWhenRestricted])
      {
        if ([contentRating isRestricted])
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [items countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    result = 0;
    if (!error)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_10:
  result = 1;
  if (error)
  {
LABEL_13:
    *error = 0;
  }

  return result;
}

@end