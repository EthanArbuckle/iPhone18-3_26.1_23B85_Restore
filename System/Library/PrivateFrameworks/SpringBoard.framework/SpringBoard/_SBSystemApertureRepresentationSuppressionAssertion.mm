@interface _SBSystemApertureRepresentationSuppressionAssertion
- (NSString)description;
- (_SBSystemApertureRepresentationSuppressionAssertion)initWithReason:(unint64_t)reason invalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBSystemApertureRepresentationSuppressionAssertion

- (void)invalidate
{
  [(_SBSystemApertureRepresentationSuppressionAssertion *)self _setValid:0];
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    invalidationBlock[2](invalidationBlock, self);
    v4 = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (_SBSystemApertureRepresentationSuppressionAssertion)initWithReason:(unint64_t)reason invalidationBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = _SBSystemApertureRepresentationSuppressionAssertion;
  v7 = [(_SBSystemApertureRepresentationSuppressionAssertion *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(_SBSystemApertureRepresentationSuppressionAssertion *)v7 _setValid:1];
    v8->_reason = reason;
    v9 = [blockCopy copy];
    invalidationBlock = v8->_invalidationBlock;
    v8->_invalidationBlock = v9;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = self->_reason - 1;
  if (v5 > 3)
  {
    v6 = @"CoverSheet";
  }

  else
  {
    v6 = off_2783B8AB0[v5];
  }

  return [v3 stringWithFormat:@"<%@: %p> reason: %@", v4, self, v6];
}

@end