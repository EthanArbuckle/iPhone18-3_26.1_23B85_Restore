@interface _TVRUIAvatarGenerator
- (_TVRUIAvatarGenerator)init;
- (id)_initialsFromName:(id)name;
- (void)generateAvatarForName:(id)name size:(CGSize)size identifier:(id)identifier completion:(id)completion;
- (void)generateAvatarForText:(id)text size:(CGSize)size identifier:(id)identifier completion:(id)completion;
@end

@implementation _TVRUIAvatarGenerator

- (_TVRUIAvatarGenerator)init
{
  v3.receiver = self;
  v3.super_class = _TVRUIAvatarGenerator;
  return [(_TVRUIAvatarGenerator *)&v3 init];
}

- (void)generateAvatarForName:(id)name size:(CGSize)size identifier:(id)identifier completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  identifierCopy = identifier;
  v13 = [(_TVRUIAvatarGenerator *)self _initialsFromName:name];
  [(_TVRUIAvatarGenerator *)self generateAvatarForText:v13 size:identifierCopy identifier:completionCopy completion:width, height];
}

- (void)generateAvatarForText:(id)text size:(CGSize)size identifier:(id)identifier completion:(id)completion
{
  height = size.height;
  width = size.width;
  textCopy = text;
  identifierCopy = identifier;
  completionCopy = completion;
  if ([textCopy length])
  {
    defaultSettings = [MEMORY[0x277CBDBD8] defaultSettings];
    v15 = [objc_alloc(MEMORY[0x277CBDBD0]) initWithSettings:defaultSettings];
    v16 = [MEMORY[0x277CBDBE0] scopeWithPointSize:0 scale:0 rightToLeft:width style:{height, 2.0}];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __74___TVRUIAvatarGenerator_generateAvatarForText_size_identifier_completion___block_invoke;
    v21 = &unk_279D88718;
    v23 = completionCopy;
    v22 = identifierCopy;
    v17 = [v15 renderMonogramForString:textCopy scope:v16 imageHandler:&v18];
    [(_TVRUIAvatarGenerator *)self setAvatarRenderer:v17, v18, v19, v20, v21];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, identifierCopy, 0);
  }
}

- (id)_initialsFromName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy componentsSeparatedByString:@" "];
  if ([v4 count] >= 2)
  {
    firstObject = [v4 firstObject];
    lastObject = [v4 lastObject];
    if ([firstObject length] && objc_msgSend(lastObject, "length"))
    {
      v7 = [firstObject substringToIndex:1];
      v8 = [lastObject substringToIndex:1];
      v9 = [v7 stringByAppendingString:v8];

LABEL_8:
      goto LABEL_12;
    }

LABEL_10:
    goto LABEL_11;
  }

  if ([v4 count] == 1)
  {
    firstObject = [v4 firstObject];
    if ([firstObject length])
    {
      v9 = [firstObject substringToIndex:1];
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_11:
  v9 = nameCopy;
LABEL_12:

  return v9;
}

@end