@interface TMLBlockSignalHandler
- (TMLBlockSignalHandler)initWithBlock:(id)a3;
- (id)callWithArguments:(id)a3;
@end

@implementation TMLBlockSignalHandler

- (TMLBlockSignalHandler)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TMLBlockSignalHandler;
  v5 = [(TMLBlockSignalHandler *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x27438BB60](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)callWithArguments:(id)a3
{
  v4 = a3;
  if ((atomic_fetch_or(&self->_flags, 0x40u) & 0x40) != 0)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, v6, @"Nested signal triggered '%@'", @"<block>");
    v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v11, v12, @"TMLRuntimeException", v10, 0);
    v14 = v13;

    objc_exception_throw(v13);
  }

  v7 = v4;
  (*(self->_block + 2))();
  atomic_fetch_and_explicit(&self->_flags, 0xBFu, memory_order_relaxed);

  return 0;
}

@end