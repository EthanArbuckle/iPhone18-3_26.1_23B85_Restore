@interface UITextPositionImpl
+ (id)wrapWebVisiblePosition:(id)position;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation UITextPositionImpl

+ (id)wrapWebVisiblePosition:(id)position
{
  positionCopy = position;
  v4 = objc_alloc_init(UITextPositionImpl);
  [(UITextPositionImpl *)v4 setWebVisiblePosition:positionCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  webVisiblePosition = [(UITextPositionImpl *)self webVisiblePosition];
  webVisiblePosition2 = [equalCopy webVisiblePosition];

  LOBYTE(equalCopy) = [webVisiblePosition isEqual:webVisiblePosition2];
  return equalCopy;
}

- (id)description
{
  webVisiblePosition = [(UITextPositionImpl *)self webVisiblePosition];
  v4 = [webVisiblePosition positionOfNextBoundaryOfGranularity:5 inDirection:1];

  webVisiblePosition2 = [(UITextPositionImpl *)self webVisiblePosition];
  v6 = [webVisiblePosition2 positionOfNextBoundaryOfGranularity:5 inDirection:0];

  webVisiblePosition3 = [(UITextPositionImpl *)self webVisiblePosition];
  v8 = [webVisiblePosition3 positionByMovingInDirection:1 amount:10];

  if (!v8)
  {
    v8 = v4;
  }

  v9 = MEMORY[0x1E696AEC0];
  if ([v4 compare:v8])
  {
    v10 = @"...";
  }

  else
  {
    v10 = &stru_1EFB14550;
  }

  v11 = MEMORY[0x1E69E2F20];
  webVisiblePosition4 = [(UITextPositionImpl *)self webVisiblePosition];
  v13 = [v11 rangeForFirstPosition:v8 second:webVisiblePosition4];
  text = [v13 text];
  v29 = [v9 stringWithFormat:@"%@%@", v10, text];

  webVisiblePosition5 = [(UITextPositionImpl *)self webVisiblePosition];
  v16 = [webVisiblePosition5 positionByMovingInDirection:0 amount:10];

  if (!v16)
  {
    v16 = v6;
  }

  v17 = MEMORY[0x1E696AEC0];
  v18 = MEMORY[0x1E69E2F20];
  webVisiblePosition6 = [(UITextPositionImpl *)self webVisiblePosition];
  v20 = [v18 rangeForFirstPosition:webVisiblePosition6 second:v16];
  text2 = [v20 text];
  v22 = [v6 compare:v16];
  v23 = @"...";
  if (!v22)
  {
    v23 = &stru_1EFB14550;
  }

  v24 = [v17 stringWithFormat:@"%@%@", text2, v23];

  v25 = MEMORY[0x1E696AEC0];
  webVisiblePosition7 = [(UITextPositionImpl *)self webVisiblePosition];
  v27 = [v25 stringWithFormat:@"<UITextPosition: %p, %i, {%@}, {%@}>", self, objc_msgSend(webVisiblePosition7, "distanceFromPosition:", v4), v29, v24];

  return v27;
}

@end