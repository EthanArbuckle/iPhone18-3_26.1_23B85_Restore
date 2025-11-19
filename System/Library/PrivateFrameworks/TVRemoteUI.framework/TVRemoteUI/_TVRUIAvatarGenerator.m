@interface _TVRUIAvatarGenerator
- (_TVRUIAvatarGenerator)init;
- (id)_initialsFromName:(id)a3;
- (void)generateAvatarForName:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6;
- (void)generateAvatarForText:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6;
@end

@implementation _TVRUIAvatarGenerator

- (_TVRUIAvatarGenerator)init
{
  v3.receiver = self;
  v3.super_class = _TVRUIAvatarGenerator;
  return [(_TVRUIAvatarGenerator *)&v3 init];
}

- (void)generateAvatarForName:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a5;
  v13 = [(_TVRUIAvatarGenerator *)self _initialsFromName:a3];
  [(_TVRUIAvatarGenerator *)self generateAvatarForText:v13 size:v12 identifier:v11 completion:width, height];
}

- (void)generateAvatarForText:(id)a3 size:(CGSize)a4 identifier:(id)a5 completion:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  if ([v11 length])
  {
    v14 = [MEMORY[0x277CBDBD8] defaultSettings];
    v15 = [objc_alloc(MEMORY[0x277CBDBD0]) initWithSettings:v14];
    v16 = [MEMORY[0x277CBDBE0] scopeWithPointSize:0 scale:0 rightToLeft:width style:{height, 2.0}];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __74___TVRUIAvatarGenerator_generateAvatarForText_size_identifier_completion___block_invoke;
    v21 = &unk_279D88718;
    v23 = v13;
    v22 = v12;
    v17 = [v15 renderMonogramForString:v11 scope:v16 imageHandler:&v18];
    [(_TVRUIAvatarGenerator *)self setAvatarRenderer:v17, v18, v19, v20, v21];
  }

  else
  {
    (*(v13 + 2))(v13, v12, 0);
  }
}

- (id)_initialsFromName:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@" "];
  if ([v4 count] >= 2)
  {
    v5 = [v4 firstObject];
    v6 = [v4 lastObject];
    if ([v5 length] && objc_msgSend(v6, "length"))
    {
      v7 = [v5 substringToIndex:1];
      v8 = [v6 substringToIndex:1];
      v9 = [v7 stringByAppendingString:v8];

LABEL_8:
      goto LABEL_12;
    }

LABEL_10:
    goto LABEL_11;
  }

  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
    if ([v5 length])
    {
      v9 = [v5 substringToIndex:1];
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_11:
  v9 = v3;
LABEL_12:

  return v9;
}

@end