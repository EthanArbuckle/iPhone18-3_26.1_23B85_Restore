@interface UIDynamicButton
@end

@implementation UIDynamicButton

uint64_t __52___UIDynamicButton__appendDebugDescriptionToStream___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(result + 40);
    v3 = _NSStringFromUIPhysicalButton(v1[3]);
    [v2 appendString:v3 withName:@"button"];

    v4 = v1[4];
    if (v4)
    {
      v5 = _NSStringFromUIPhysicalButtonSource(v4);
      [v2 appendString:v5 withName:@"source"];
    }

    v6 = [v2 appendUnsignedInteger:v1[8] withName:@"stage"];
    v7 = v1[10];
    if (v7 > 4)
    {
      v8 = &stru_1EFB14550;
    }

    else
    {
      v8 = off_1E70FA360[v7];
    }

    return [v2 appendString:v8 withName:@"phase"];
  }

  return result;
}

void __58___UIDynamicButton_descriptionBuilderWithMultilinePrefix___block_invoke(int8x16_t *a1)
{
  v2 = a1[2].i64[0];
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___UIDynamicButton_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v5 = a1[2];
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

@end