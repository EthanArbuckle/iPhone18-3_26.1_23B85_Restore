@interface NSValueTransformer(MTLInversionAdditions)
- (id)mtl_invertedTransformer;
@end

@implementation NSValueTransformer(MTLInversionAdditions)

- (id)mtl_invertedTransformer
{
  if (([objc_opt_class() allowsReverseTransformation] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLInversionAdditions.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"self.class.allowsReverseTransformation"}];
  }

  if ([self conformsToProtocol:&unk_1F4AAC500])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSValueTransformer+MTLInversionAdditions.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"[self respondsToSelector:@selector(reverseTransformedValue:success:error:)]"}];
    }

    selfCopy = self;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__NSValueTransformer_MTLInversionAdditions__mtl_invertedTransformer__block_invoke;
    v14[3] = &unk_1E8379F80;
    v15 = selfCopy;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__NSValueTransformer_MTLInversionAdditions__mtl_invertedTransformer__block_invoke_2;
    v12[3] = &unk_1E8379F80;
    v13 = v15;
    v5 = v15;
    v6 = [MTLValueTransformer transformerUsingForwardBlock:v14 reverseBlock:v12];
  }

  else
  {
    v10[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__NSValueTransformer_MTLInversionAdditions__mtl_invertedTransformer__block_invoke_3;
    v11[3] = &unk_1E8379F80;
    v11[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__NSValueTransformer_MTLInversionAdditions__mtl_invertedTransformer__block_invoke_4;
    v10[3] = &unk_1E8379F80;
    v6 = [MTLValueTransformer transformerUsingForwardBlock:v11 reverseBlock:v10];
  }

  return v6;
}

@end