@interface CUTWeakCGRectZero
@end

@implementation CUTWeakCGRectZero

__n128 ____CUTWeakCGRectZero_block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    result = *v0;
    v2 = *(v0 + 16);
    __CUTStaticWeak_CGRectZero = *v0;
    *&qword_1EAED6270 = v2;
  }

  return result;
}

@end