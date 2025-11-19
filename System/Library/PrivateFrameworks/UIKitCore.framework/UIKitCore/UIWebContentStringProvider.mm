@interface UIWebContentStringProvider
+ (NSArray)additionalTrailingReadableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 requestedClass:(Class)a5 error:(id *)a6;
@end

@implementation UIWebContentStringProvider

+ (NSArray)additionalTrailingReadableTypeIdentifiersForItemProvider
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [*MEMORY[0x1E6983098] identifier];
  v6[0] = v2;
  v3 = [*MEMORY[0x1E6982E18] identifier];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 requestedClass:(Class)a5 error:(id *)a6
{
  v28[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [MEMORY[0x1E6982C40] _typeWithIdentifier:a4 allowUndeclared:1];
  if ([v10 conformsToType:*MEMORY[0x1E6983098]])
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = *off_1E70ECAE8;
    v13 = *off_1E70EC938;
    v27[0] = *off_1E70EC8F0;
    v27[1] = v13;
    v28[0] = v12;
    v28[1] = MEMORY[0x1E695E110];
    v14 = MEMORY[0x1E695DF20];
    v15 = v28;
    v16 = v27;
LABEL_5:
    v19 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:2];
    v20 = [v11 _initWithHTMLData:v9 options:v19 documentAttributes:0 error:a6];

    if (v20)
    {
      v21 = [a5 alloc];
      v22 = [v20 string];
      v23 = [v21 initWithString:v22];
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_10;
  }

  if ([v10 conformsToType:*MEMORY[0x1E6982E18]])
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v17 = *off_1E70EC940;
    v18 = *off_1E70EC938;
    v25[0] = *off_1E70EC8F0;
    v25[1] = v18;
    v26[0] = v17;
    v26[1] = MEMORY[0x1E695E110];
    v14 = MEMORY[0x1E695DF20];
    v15 = v26;
    v16 = v25;
    goto LABEL_5;
  }

  v23 = 0;
LABEL_10:

  return v23;
}

@end