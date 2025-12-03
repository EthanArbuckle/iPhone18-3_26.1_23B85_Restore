@interface NSDictionary
- (id)fp_jsonRepresentation;
@end

@implementation NSDictionary

- (id)fp_jsonRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v5 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSDictionary *)selfCopy objectForKeyedSubscript:v9, v13];
        fp_jsonRepresentation = [v10 fp_jsonRepresentation];
        [v3 setObject:fp_jsonRepresentation forKeyedSubscript:v9];
      }

      v6 = [(NSDictionary *)selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

@end