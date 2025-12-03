@interface SXCollectionLayout
- (id)description;
@end

@implementation SXCollectionLayout

- (id)description
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [(SXCollectionLayout *)self spaceBetweenRows];
  [v3 appendFormat:@"spaceBetweenRows: %f; ", v4];
  rowsLayouts = [(SXCollectionLayout *)self rowsLayouts];
  [v3 appendFormat:@"rowLayouts (%lu)", objc_msgSend(rowsLayouts, "count")];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  rowsLayouts2 = [(SXCollectionLayout *)self rowsLayouts];
  v7 = [rowsLayouts2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(rowsLayouts2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v3 appendString:@"\n"];
        v12 = [v11 description];
        [v3 appendFormat:@"%@", v12];
      }

      v8 = [rowsLayouts2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  rowsLayouts3 = [(SXCollectionLayout *)self rowsLayouts];
  v14 = [rowsLayouts3 count];

  if (v14)
  {
    [v3 appendString:@"\n"];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end