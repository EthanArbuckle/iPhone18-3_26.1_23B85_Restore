@interface REMListBadge
- (BOOL)_isJSONString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)rawValue;
- (REMListBadge)initWithEmblem:(id)a3;
- (REMListBadge)initWithEmoji:(id)a3;
- (REMListBadge)initWithRawValue:(id)a3;
- (id)_emojiFromRawString:(id)a3;
@end

@implementation REMListBadge

- (REMListBadge)initWithEmblem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMListBadge;
  v5 = [(REMListBadge *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMListBadge *)v5 setEmblem:v4];
  }

  return v6;
}

- (REMListBadge)initWithEmoji:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REMListBadge;
  v5 = [(REMListBadge *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMListBadge *)v5 setEmoji:v4];
  }

  return v6;
}

- (REMListBadge)initWithRawValue:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMListBadge;
  v5 = [(REMListBadge *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if ([(REMListBadge *)v5 _isJSONString:v4])
    {
      v7 = [(REMListBadge *)v6 _emojiFromRawString:v4];
      [(REMListBadge *)v6 setEmoji:v7];
    }

    else
    {
      [(REMListBadge *)v6 setEmblem:v4];
    }
  }

  return v6;
}

- (NSString)rawValue
{
  v3 = [(REMListBadge *)self emblem];

  if (v3)
  {
    v4 = [(REMListBadge *)self emblem];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(REMListBadge *)self emoji];
    v4 = [v5 stringWithFormat:@"{%@ : %@}", @"Emoji", v6];
  }

  return v4;
}

- (id)_emojiFromRawString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v9];
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);
  v7 = [v6 objectForKey:@"Emoji"];

  return v7;
}

- (BOOL)_isJSONString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 characterAtIndex:0] == 123;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMListBadge *)self emblem];
  v6 = [v4 emblem];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMListBadge *)self emblem];
    v9 = [v4 emblem];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMListBadge *)self emoji];
  v13 = [v4 emoji];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMListBadge *)self emoji];
    v15 = [v4 emoji];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

@end