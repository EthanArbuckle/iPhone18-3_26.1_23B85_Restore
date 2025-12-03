@interface YNHF5E1zsUQomY0e
+ (int64_t)e5e78c18a4be83e1:(_KUwyEjpVZR65eUyl *)e5e78c18a4be83e1 spData:(const _eipjLVDiD7LNwlPc *)data;
- (YNHF5E1zsUQomY0e)initWithtaDFBApmLBObrNlM:(_KUwyEjpVZR65eUyl *)m itCyNcNHxjurvzrS:(id)s;
@end

@implementation YNHF5E1zsUQomY0e

+ (int64_t)e5e78c18a4be83e1:(_KUwyEjpVZR65eUyl *)e5e78c18a4be83e1 spData:(const _eipjLVDiD7LNwlPc *)data
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  gettimeofday(&v7, 0);
  return data->evaluationStartDate - 1000 * v7.tv_sec + e5e78c18a4be83e1->var3 + v7.tv_usec / -1000;
}

- (YNHF5E1zsUQomY0e)initWithtaDFBApmLBObrNlM:(_KUwyEjpVZR65eUyl *)m itCyNcNHxjurvzrS:(id)s
{
  sCopy = s;
  v11.receiver = self;
  v11.super_class = YNHF5E1zsUQomY0e;
  v8 = [(YNHF5E1zsUQomY0e *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_LvlWuLAGTFjI8z1M = m;
    objc_storeStrong(&v8->_fubP36M2a0RaVUtL, s);
  }

  return v9;
}

@end