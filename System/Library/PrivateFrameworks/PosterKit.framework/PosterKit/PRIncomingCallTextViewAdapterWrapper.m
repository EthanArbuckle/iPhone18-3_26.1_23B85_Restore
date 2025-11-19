@interface PRIncomingCallTextViewAdapterWrapper
- (CGRect)frame;
- (CGRect)tightFrame;
- (CGSize)sizeThatFitsIn:(CGSize)a3;
- (CGSize)sizeThatFitsInSize:(CGSize)a3;
- (PRIncomingCallTextViewAdapterWrapper)initWithContact:(id)a3 status:(id)a4 callIsActive:(BOOL)a5;
- (PRIncomingCallTextViewAdapterWrapper)initWithGivenName:(id)a3 familyName:(id)a4 status:(id)a5 callIsActive:(BOOL)a6;
- (PRIncomingCallTextViewAdapterWrapper)initWithName:(id)a3 status:(id)a4 callIsActive:(BOOL)a5;
- (void)setCaptionFont:(id)a3;
@end

@implementation PRIncomingCallTextViewAdapterWrapper

- (CGRect)frame
{
  [(PRIncomingCallTextViewAdapter *)self->adapter frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)tightFrame
{
  [(PRIncomingCallTextViewAdapter *)self->adapter tightFrame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PRIncomingCallTextViewAdapterWrapper)initWithName:(id)a3 status:(id)a4 callIsActive:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PRIncomingCallTextViewAdapterWrapper;
  v10 = [(PRIncomingCallTextViewAdapterWrapper *)&v14 init];
  if (v10)
  {
    v11 = [[PRIncomingCallTextViewAdapter alloc] initWithName:v8 status:v9 callIsActive:v5];
    adapter = v10->adapter;
    v10->adapter = v11;
  }

  return v10;
}

- (PRIncomingCallTextViewAdapterWrapper)initWithContact:(id)a3 status:(id)a4 callIsActive:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PRIncomingCallTextViewAdapterWrapper;
  v10 = [(PRIncomingCallTextViewAdapterWrapper *)&v14 init];
  if (v10)
  {
    v11 = [[PRIncomingCallTextViewAdapter alloc] initWithContact:v8 status:v9 callIsActive:v5];
    adapter = v10->adapter;
    v10->adapter = v11;
  }

  return v10;
}

- (CGSize)sizeThatFitsIn:(CGSize)a3
{
  [(PRIncomingCallTextViewAdapter *)self->adapter sizeThatFitsIn:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFitsInSize:(CGSize)a3
{
  [(PRIncomingCallTextViewAdapter *)self->adapter sizeThatFitsIn:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PRIncomingCallTextViewAdapterWrapper)initWithGivenName:(id)a3 familyName:(id)a4 status:(id)a5 callIsActive:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = PRIncomingCallTextViewAdapterWrapper;
  v13 = [(PRIncomingCallTextViewAdapterWrapper *)&v18 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v14 setGivenName:v10];
    [v14 setFamilyName:v11];
    v15 = [[PRIncomingCallTextViewAdapter alloc] initWithContact:v14 status:v12 callIsActive:v6];
    adapter = v13->adapter;
    v13->adapter = v15;
  }

  return v13;
}

- (void)setCaptionFont:(id)a3
{
  v7 = a3;
  [v7 pointSize];
  v5 = v4;
  +[PRIncomingCallFontsProvider defaultStatusFontSize];
  if (v5 == v6)
  {
    [(PRIncomingCallTextViewAdapterWrapper *)self setStatusFont:v7];
  }

  else
  {
    [(PRIncomingCallTextViewAdapterWrapper *)self setSecondaryNameFont:v7];
  }
}

@end