@interface AXRemoteElement(STAXPriv)
- (id)_accessibilityNextElementsForSpeakThis;
@end

@implementation AXRemoteElement(STAXPriv)

- (id)_accessibilityNextElementsForSpeakThis
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 _accessibilityAncestorIsKindOf:objc_opt_class()];
  v3 = [v2 sxaxNextSpeakThisElementFromElement:a1];
  v4 = v3;
  if (v3)
  {
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = &off_1F542D0F8;
    v5 = objc_msgSendSuper2(&v8, sel__accessibilityNextElementsForSpeakThis);
  }

  v6 = v5;

  return v6;
}

@end