@interface CRRegister
+ (id)registerWithType:(unint64_t)a3 contents:(id)a4 document:(id)a5;
- (CRDocument)document;
- (CRRegister)initWithCRCoder:(id)a3;
- (CRRegister)initWithDocument:(id)a3;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)tombstone;
- (void)encodeWithCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation CRRegister

+ (id)registerWithType:(unint64_t)a3 contents:(id)a4 document:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(*off_1E7509F40[a3]) initWithContents:v7 document:v8];
  }

  return v9;
}

- (CRRegister)initWithDocument:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRRegister;
  v5 = [(CRRegister *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_document, v4);
  }

  return v6;
}

- (void)mergeWith:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v7);
}

- (void)walkGraph:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (id)tombstone
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot tombstone a non-value / non-identified object." userInfo:0];
  objc_exception_throw(v2);
}

- (void)encodeWithCRCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (CRRegister)initWithCRCoder:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (CRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end