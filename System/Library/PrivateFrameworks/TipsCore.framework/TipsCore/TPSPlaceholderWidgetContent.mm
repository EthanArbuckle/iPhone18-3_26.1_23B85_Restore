@interface TPSPlaceholderWidgetContent
- (id)titleContent;
@end

@implementation TPSPlaceholderWidgetContent

- (id)titleContent
{
  v16[2] = *MEMORY[0x1E69E9840];
  v14[0] = @"type";
  v14[1] = @"text";
  v15[0] = @"text";
  v15[1] = @"– – – – ";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16[0] = v2;
  v12[0] = @"type";
  v12[1] = @"text";
  v13[0] = @"text";
  v13[1] = @"– – – – – – – – – – – – –";
  v12[2] = @"marks";
  v9 = @"type";
  v10 = @"accentColor";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v11 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v13[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v16[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end