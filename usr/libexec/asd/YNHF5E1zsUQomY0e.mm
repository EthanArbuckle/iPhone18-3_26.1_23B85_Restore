@interface YNHF5E1zsUQomY0e
+ (int64_t)e5e78c18a4be83e1:(_KUwyEjpVZR65eUyl *)a3 spData:(const _eipjLVDiD7LNwlPc *)a4;
- (YNHF5E1zsUQomY0e)initWithtaDFBApmLBObrNlM:(_KUwyEjpVZR65eUyl *)a3 itCyNcNHxjurvzrS:(id)a4;
@end

@implementation YNHF5E1zsUQomY0e

+ (int64_t)e5e78c18a4be83e1:(_KUwyEjpVZR65eUyl *)a3 spData:(const _eipjLVDiD7LNwlPc *)a4
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  gettimeofday(&v7, 0);
  return a4->evaluationStartDate - 1000 * v7.tv_sec + a3->var3 + v7.tv_usec / -1000;
}

- (YNHF5E1zsUQomY0e)initWithtaDFBApmLBObrNlM:(_KUwyEjpVZR65eUyl *)a3 itCyNcNHxjurvzrS:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = YNHF5E1zsUQomY0e;
  v8 = [(YNHF5E1zsUQomY0e *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_LvlWuLAGTFjI8z1M = a3;
    objc_storeStrong(&v8->_fubP36M2a0RaVUtL, a4);
  }

  return v9;
}

@end