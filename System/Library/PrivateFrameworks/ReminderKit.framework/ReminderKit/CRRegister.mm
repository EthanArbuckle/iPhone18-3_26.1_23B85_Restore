@interface CRRegister
+ (id)registerWithType:(unint64_t)type contents:(id)contents document:(id)document;
- (CRDocument)document;
- (CRRegister)initWithCRCoder:(id)coder;
- (CRRegister)initWithDocument:(id)document;
- (id)deltaSince:(id)since in:(id)in;
- (id)tombstone;
- (void)encodeWithCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)walkGraph:(id)graph;
@end

@implementation CRRegister

+ (id)registerWithType:(unint64_t)type contents:(id)contents document:(id)document
{
  contentsCopy = contents;
  documentCopy = document;
  if (type > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_alloc(*off_1E7509F40[type]) initWithContents:contentsCopy document:documentCopy];
  }

  return v9;
}

- (CRRegister)initWithDocument:(id)document
{
  documentCopy = document;
  v8.receiver = self;
  v8.super_class = CRRegister;
  v5 = [(CRRegister *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_document, documentCopy);
  }

  return v6;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v7);
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (id)tombstone
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Cannot tombstone a non-value / non-identified object." userInfo:0];
  objc_exception_throw(v2);
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (CRRegister)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Subclass must implement." userInfo:0];
  objc_exception_throw(v4);
}

- (CRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end