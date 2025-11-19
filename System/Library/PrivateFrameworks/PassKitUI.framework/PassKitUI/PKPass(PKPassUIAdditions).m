@interface PKPass(PKPassUIAdditions)
- (id)cardImageWithDimensions:()PKPassUIAdditions;
- (id)icon;
- (id)mailAttachmentIcon;
@end

@implementation PKPass(PKPassUIAdditions)

- (id)icon
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [a1 iconImage];
  v5 = [v3 imageWithPKImage:v4];

  if (!v5)
  {
    v8 = 1.0;
    v6 = PKPassIconImage(0, &v8);
    v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6 scale:0 orientation:v8];
  }

  objc_autoreleasePoolPop(v2);

  return v5;
}

- (id)mailAttachmentIcon
{
  v2 = objc_autoreleasePoolPush();
  v7 = 1.0;
  v3 = [a1 rawIcon];
  v4 = PKPassMailAttachmentIconImage(v3, &v7);

  v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v4 scale:0 orientation:v7];
  objc_autoreleasePoolPop(v2);

  return v5;
}

- (id)cardImageWithDimensions:()PKPassUIAdditions
{
  v5 = [[PKPassView alloc] initWithPass:a1 content:5 suppressedContent:4087];
  v6 = [(PKPassView *)v5 snapshotOfFrontFaceWithRequestedSize:a2, a3];

  return v6;
}

@end