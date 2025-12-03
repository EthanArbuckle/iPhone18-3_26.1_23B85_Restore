@interface RBEncoderSet
- (RBEncoderSet)init;
- (void)addDisplayList:(id)list;
@end

@implementation RBEncoderSet

- (RBEncoderSet)init
{
  v3.receiver = self;
  v3.super_class = RBEncoderSet;
  if ([(RBEncoderSet *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)addDisplayList:(id)list
{
  if (self->_final)
  {
    [(RBEncoderSet *)self addDisplayList:a2];
  }

  _rb_contents = [list _rb_contents];
  if (_rb_contents)
  {
    v5 = _rb_contents;
    p = self->_font_set._p;
    *v7 = 0u;
    *v8 = 0u;
    v9 = 0u;
    v10 = 0;
    v11 = 0;
    if (p)
    {
      atomic_fetch_add_explicit(p + 2, 1u, memory_order_relaxed);
    }

    v12 = p;
    v13 = 0;
    RB::UntypedTable::UntypedTable(v14, 0, 0, 0, 0);
    v14[16] = atomic_fetch_add_explicit(&RB::Encoder::_last_encoder_id, 1u, memory_order_relaxed) + 1;
    v14[17] = 1;
    RB::DisplayList::Contents::prepare_encode(v5, v7);
    RB::UntypedTable::~UntypedTable(v14);
    if (v12 && atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      [RBEncoderSet init];
    }

    if (v8[1])
    {
      free(v8[1]);
    }

    if (v7[0])
    {
      free(v7[0]);
    }
  }
}

- (uint64_t)addDisplayList:(uint64_t)result .cold.1(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

@end