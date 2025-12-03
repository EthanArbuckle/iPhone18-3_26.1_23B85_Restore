@interface PKPeerPayment3DCharacter
+ (id)characterWithCharacter:(id)character node:(id)node;
@end

@implementation PKPeerPayment3DCharacter

+ (id)characterWithCharacter:(id)character node:(id)node
{
  characterCopy = character;
  nodeCopy = node;
  v7 = objc_alloc_init(PKPeerPayment3DCharacter);
  v8 = v7;
  if (v7)
  {
    [(PKPeerPayment3DCharacter *)v7 setNode:nodeCopy];
    [(PKPeerPayment3DCharacter *)v8 setCharacter:characterCopy];
  }

  return v8;
}

@end