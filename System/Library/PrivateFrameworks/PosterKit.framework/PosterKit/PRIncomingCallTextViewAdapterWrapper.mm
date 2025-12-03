@interface PRIncomingCallTextViewAdapterWrapper
- (CGRect)frame;
- (CGRect)tightFrame;
- (CGSize)sizeThatFitsIn:(CGSize)in;
- (CGSize)sizeThatFitsInSize:(CGSize)size;
- (PRIncomingCallTextViewAdapterWrapper)initWithContact:(id)contact status:(id)status callIsActive:(BOOL)active;
- (PRIncomingCallTextViewAdapterWrapper)initWithGivenName:(id)name familyName:(id)familyName status:(id)status callIsActive:(BOOL)active;
- (PRIncomingCallTextViewAdapterWrapper)initWithName:(id)name status:(id)status callIsActive:(BOOL)active;
- (void)setCaptionFont:(id)font;
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

- (PRIncomingCallTextViewAdapterWrapper)initWithName:(id)name status:(id)status callIsActive:(BOOL)active
{
  activeCopy = active;
  nameCopy = name;
  statusCopy = status;
  v14.receiver = self;
  v14.super_class = PRIncomingCallTextViewAdapterWrapper;
  v10 = [(PRIncomingCallTextViewAdapterWrapper *)&v14 init];
  if (v10)
  {
    v11 = [[PRIncomingCallTextViewAdapter alloc] initWithName:nameCopy status:statusCopy callIsActive:activeCopy];
    adapter = v10->adapter;
    v10->adapter = v11;
  }

  return v10;
}

- (PRIncomingCallTextViewAdapterWrapper)initWithContact:(id)contact status:(id)status callIsActive:(BOOL)active
{
  activeCopy = active;
  contactCopy = contact;
  statusCopy = status;
  v14.receiver = self;
  v14.super_class = PRIncomingCallTextViewAdapterWrapper;
  v10 = [(PRIncomingCallTextViewAdapterWrapper *)&v14 init];
  if (v10)
  {
    v11 = [[PRIncomingCallTextViewAdapter alloc] initWithContact:contactCopy status:statusCopy callIsActive:activeCopy];
    adapter = v10->adapter;
    v10->adapter = v11;
  }

  return v10;
}

- (CGSize)sizeThatFitsIn:(CGSize)in
{
  [(PRIncomingCallTextViewAdapter *)self->adapter sizeThatFitsIn:in.width, in.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)sizeThatFitsInSize:(CGSize)size
{
  [(PRIncomingCallTextViewAdapter *)self->adapter sizeThatFitsIn:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PRIncomingCallTextViewAdapterWrapper)initWithGivenName:(id)name familyName:(id)familyName status:(id)status callIsActive:(BOOL)active
{
  activeCopy = active;
  nameCopy = name;
  familyNameCopy = familyName;
  statusCopy = status;
  v18.receiver = self;
  v18.super_class = PRIncomingCallTextViewAdapterWrapper;
  v13 = [(PRIncomingCallTextViewAdapterWrapper *)&v18 init];
  if (v13)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695CF18]);
    [v14 setGivenName:nameCopy];
    [v14 setFamilyName:familyNameCopy];
    v15 = [[PRIncomingCallTextViewAdapter alloc] initWithContact:v14 status:statusCopy callIsActive:activeCopy];
    adapter = v13->adapter;
    v13->adapter = v15;
  }

  return v13;
}

- (void)setCaptionFont:(id)font
{
  fontCopy = font;
  [fontCopy pointSize];
  v5 = v4;
  +[PRIncomingCallFontsProvider defaultStatusFontSize];
  if (v5 == v6)
  {
    [(PRIncomingCallTextViewAdapterWrapper *)self setStatusFont:fontCopy];
  }

  else
  {
    [(PRIncomingCallTextViewAdapterWrapper *)self setSecondaryNameFont:fontCopy];
  }
}

@end