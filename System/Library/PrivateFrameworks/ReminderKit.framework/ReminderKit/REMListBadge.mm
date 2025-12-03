@interface REMListBadge
- (BOOL)_isJSONString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)rawValue;
- (REMListBadge)initWithEmblem:(id)emblem;
- (REMListBadge)initWithEmoji:(id)emoji;
- (REMListBadge)initWithRawValue:(id)value;
- (id)_emojiFromRawString:(id)string;
@end

@implementation REMListBadge

- (REMListBadge)initWithEmblem:(id)emblem
{
  emblemCopy = emblem;
  v8.receiver = self;
  v8.super_class = REMListBadge;
  v5 = [(REMListBadge *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMListBadge *)v5 setEmblem:emblemCopy];
  }

  return v6;
}

- (REMListBadge)initWithEmoji:(id)emoji
{
  emojiCopy = emoji;
  v8.receiver = self;
  v8.super_class = REMListBadge;
  v5 = [(REMListBadge *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(REMListBadge *)v5 setEmoji:emojiCopy];
  }

  return v6;
}

- (REMListBadge)initWithRawValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = REMListBadge;
  v5 = [(REMListBadge *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if ([(REMListBadge *)v5 _isJSONString:valueCopy])
    {
      v7 = [(REMListBadge *)v6 _emojiFromRawString:valueCopy];
      [(REMListBadge *)v6 setEmoji:v7];
    }

    else
    {
      [(REMListBadge *)v6 setEmblem:valueCopy];
    }
  }

  return v6;
}

- (NSString)rawValue
{
  emblem = [(REMListBadge *)self emblem];

  if (emblem)
  {
    emblem2 = [(REMListBadge *)self emblem];
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    emoji = [(REMListBadge *)self emoji];
    emblem2 = [v5 stringWithFormat:@"{%@ : %@}", @"Emoji", emoji];
  }

  return emblem2;
}

- (id)_emojiFromRawString:(id)string
{
  v3 = [string dataUsingEncoding:4];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v9];
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);
  v7 = [v6 objectForKey:@"Emoji"];

  return v7;
}

- (BOOL)_isJSONString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [stringCopy characterAtIndex:0] == 123;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  emblem = [(REMListBadge *)self emblem];
  emblem2 = [equalCopy emblem];
  v7 = emblem2;
  if (emblem == emblem2)
  {
  }

  else
  {
    emblem3 = [(REMListBadge *)self emblem];
    emblem4 = [equalCopy emblem];
    v10 = [emblem3 isEqual:emblem4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  emoji = [(REMListBadge *)self emoji];
  emoji2 = [equalCopy emoji];
  if (emoji == emoji2)
  {
    v11 = 1;
  }

  else
  {
    emoji3 = [(REMListBadge *)self emoji];
    emoji4 = [equalCopy emoji];
    v11 = [emoji3 isEqual:emoji4];
  }

LABEL_10:
  return v11 & 1;
}

@end