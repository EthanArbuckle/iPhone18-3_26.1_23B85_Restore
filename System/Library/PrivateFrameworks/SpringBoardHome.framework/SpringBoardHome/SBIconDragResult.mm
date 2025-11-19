@interface SBIconDragResult
- (NSString)description;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBIconDragResult

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBIconDragResult *)self appendDescriptionToStream:v3];
  v4 = [v3 description];

  return v4;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SBIconDragResult_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

void __46__SBIconDragResult_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dragIdentifier];
  v4 = [v2 appendObject:v3 withName:@"dragIdentifier"];

  v5 = [*(a1 + 32) appendUnsignedInteger:objc_msgSend(*(a1 + 40) withName:{"numberOfDraggedItems"), @"numberOfDraggedItems"}];
  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"performedDrop"), @"performedDrop"}];
  v7 = *(a1 + 32);
  v8 = SBHStringForDragRejectionReason([*(a1 + 40) dragRejectionReason]);
  [v7 appendString:v8 withName:@"dragRejectionReason"];
}

@end