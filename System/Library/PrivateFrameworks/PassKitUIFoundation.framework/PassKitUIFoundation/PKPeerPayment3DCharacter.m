@interface PKPeerPayment3DCharacter
+ (id)characterWithCharacter:(id)a3 node:(id)a4;
@end

@implementation PKPeerPayment3DCharacter

+ (id)characterWithCharacter:(id)a3 node:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(PKPeerPayment3DCharacter);
  v8 = v7;
  if (v7)
  {
    [(PKPeerPayment3DCharacter *)v7 setNode:v6];
    [(PKPeerPayment3DCharacter *)v8 setCharacter:v5];
  }

  return v8;
}

@end