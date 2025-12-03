@interface RBShader
+ (id)decodedObjectWithData:(id)data delegate:(id)delegate error:(id *)error;
- ($B8E3DD8A8954C8C133399D0883B251E3)argumentAtIndex:(SEL)index;
- (BOOL)isEqual:(id)equal;
- (CGAffineTransform)CIFilterCTM;
- (RBShader)initWithLibrary:(id)library function:(id)function;
- (RBShader)initWithSystemShader:(id)shader;
- (float)argumentHeadroomAtIndex:(unint64_t)index;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodedDataForDelegate:(id)delegate error:(id *)error;
- (void)removeAllArguments;
- (void)setArgumentBytes:(const void *)bytes atIndex:(unint64_t)index type:(unsigned int)type count:(unint64_t)count flags:(unsigned int)flags;
- (void)setArgumentColorSpace:(int)space atIndex:(unint64_t)index;
- (void)setArgumentData:(id)data atIndex:(unint64_t)index type:(unsigned int)type flags:(unsigned int)flags;
- (void)setArgumentHeadroom:(float)headroom atIndex:(unint64_t)index;
- (void)setCIFilterCTM:(CGAffineTransform *)m;
- (void)setCIFilterProvider:(id)provider;
- (void)setRBClosure:(void *)result;
@end

@implementation RBShader

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 4;
  return self;
}

- (RBShader)initWithLibrary:(id)library function:(id)function
{
  v9.receiver = self;
  v9.super_class = RBShader;
  v6 = [(RBShader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(RBShader *)v6 initWithLibrary:library function:function];
  }

  return v7;
}

- (RBShader)initWithSystemShader:(id)shader
{
  v5 = +[RBShaderLibrary systemLibrary];

  return [(RBShader *)self initWithLibrary:v5 function:shader];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  p = self->_library._p;
  v6 = *(v4 + 8);
  if (v6 != p)
  {

    *(v4 + 8) = p;
  }

  RB::CustomShader::Closure::operator=((v4 + 16), &self->_fn_args);
  *(v4 + 192) = self->_type;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_type != *(equal + 48) || self->_library._p != *(equal + 1))
  {
    return 0;
  }

  return RB::CustomShader::Closure::operator==(&self->_fn_args, equal + 2);
}

- (void)removeAllArguments
{
  size = self->_fn_args.args._size;
  if (self->_fn_args.args._p_2)
  {
    p_2 = self->_fn_args.args._p_2;
  }

  else
  {
    p_2 = &self->_fn_args.args;
  }

  if (size)
  {
    v5 = 32 * size;
    do
    {
      RB::CustomShader::Value::reset_data(p_2);
      p_2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  self->_fn_args.args._size = 0;
}

- (void)setArgumentBytes:(const void *)bytes atIndex:(unint64_t)index type:(unsigned int)type count:(unint64_t)count flags:(unsigned int)flags
{
  flagsCopy = flags;
  typeCopy = type;
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, index);
  p_2 = self->_fn_args.args._p_2;
  if (!p_2)
  {
    p_2 = &self->_fn_args.args;
  }

  RB::CustomShader::Value::set_bytes(p_2 + 32 * index, typeCopy, count, bytes);
  p = self->_fn_args.args._p_2;
  if (!p)
  {
    p = self->_fn_args.args._p;
  }

  p[32 * index + 9] = p[32 * index + 9] & 0xFE | flagsCopy & 1;
  v15 = self->_fn_args.args._p_2;
  if (!v15)
  {
    v15 = self->_fn_args.args._p;
  }

  v15[32 * index + 9] = v15[32 * index + 9] & 0xFD | flagsCopy & 2;
}

- (void)setArgumentData:(id)data atIndex:(unint64_t)index type:(unsigned int)type flags:(unsigned int)flags
{
  flagsCopy = flags;
  typeCopy = type;
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, index);
  p_2 = self->_fn_args.args._p_2;
  if (!p_2)
  {
    p_2 = &self->_fn_args.args;
  }

  RB::CustomShader::Value::set_data(p_2 + 32 * index, typeCopy, data);
  p = self->_fn_args.args._p_2;
  if (!p)
  {
    p = self->_fn_args.args._p;
  }

  p[32 * index + 9] = p[32 * index + 9] & 0xFE | flagsCopy & 1;
  v13 = self->_fn_args.args._p_2;
  if (!v13)
  {
    v13 = self->_fn_args.args._p;
  }

  v13[32 * index + 9] = v13[32 * index + 9] & 0xFD | flagsCopy & 2;
}

- (void)setArgumentColorSpace:(int)space atIndex:(unint64_t)index
{
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, index);
  v7 = rb_color_space(space);
  p_args = &self->_fn_args.args;
  if (self->_fn_args.args._p_2)
  {
    p_args = self->_fn_args.args._p_2;
  }

  *&p_args[32 * index + 7] = v7;
}

- (void)setArgumentHeadroom:(float)headroom atIndex:(unint64_t)index
{
  _S8 = headroom;
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, index);
  __asm { FCVT            H0, S8 }

  p = self->_fn_args.args._p;
  if (self->_fn_args.args._p_2)
  {
    p = self->_fn_args.args._p_2;
  }

  p[16 * index + 2] = _H0;
}

- (float)argumentHeadroomAtIndex:(unint64_t)index
{
  result = 0.0;
  if (self->_fn_args.args._size > index)
  {
    p = self->_fn_args.args._p;
    if (self->_fn_args.args._p_2)
    {
      p = self->_fn_args.args._p_2;
    }

    _H0 = p[16 * index + 2];
    __asm { FCVT            S0, H0 }
  }

  return result;
}

- ($B8E3DD8A8954C8C133399D0883B251E3)argumentAtIndex:(SEL)index
{
  if (self->_fn_args.args._size <= a4)
  {
    RB::precondition_failure("invalid argument index: %ld", index, a4);
  }

  p_args = &self->_fn_args.args;
  if (self->_fn_args.args._p_2)
  {
    p_args = self->_fn_args.args._p_2;
  }

  v6 = &p_args[32 * a4];
  if ((v6[9] & 2) != 0)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (v6[9])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  retstr->var0 = v6[6];
  retstr->var1 = v8;
  retstr->var2 = *v6;
  retstr->var3 = RB::CustomShader::Value::data_ptr(v6);
  result = rb_color_space(*(v6 + 7));
  retstr->var4 = result;
  return result;
}

- (void)setCIFilterProvider:(id)provider
{
  v4 = [provider copy];

  self->_fn_args.cifilter_provider._p = v4;
}

- (CGAffineTransform)CIFilterCTM
{
  ty = self[3].ty;
  if (ty == 0.0)
  {
    ty = MEMORY[0x1E695EFD0];
  }

  v4 = *(*&ty + 16);
  *&retstr->a = **&ty;
  *&retstr->c = v4;
  *&retstr->tx = *(*&ty + 32);
  return self;
}

- (void)setCIFilterCTM:(CGAffineTransform *)m
{
  ptr = self->_cifilter_ctm.__ptr_;
  if (!ptr)
  {
    operator new();
  }

  v4 = *&m->a;
  v5 = *&m->tx;
  *&ptr->c = *&m->c;
  *&ptr->tx = v5;
  *&ptr->a = v4;
}

- (id)encodedDataForDelegate:(id)delegate error:(id *)error
{
  v8[0] = &unk_1F0A38EC0;
  v8[1] = delegate;
  RB::ObjcEncoderDelegate::font_set(v8, &v17);
  v6 = v17;
  *v9 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v13 = v8;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1u, memory_order_relaxed);
  }

  v14 = v6;
  v15 = 0;
  RB::UntypedTable::UntypedTable(v16, 0, 0, 0, 0);
  v16[16] = atomic_fetch_add_explicit(&RB::Encoder::_last_encoder_id, 1u, memory_order_relaxed) + 1;
  v16[17] = 0;
  RB::CustomShader::Closure::prepare_encode(&self->_fn_args.function._p, v9);
  RB::Encoder::prepare_fonts(v9);
  RB::ProtobufEncoder::encode_varint(v9, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(v9);
  RB::CustomShader::Closure::encode(&self->_fn_args, v9);
  RB::ProtobufEncoder::end_length_delimited(v9);
  if ((v12 & 1) == 0)
  {
    operator new();
  }

  RB::UntypedTable::~UntypedTable(v16);
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBEncoderSet init];
  }

  if (v10[1])
  {
    free(v10[1]);
  }

  if (v9[0])
  {
    free(v9[0]);
  }

  if (v17 && atomic_fetch_add_explicit((v17 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    [RBEncoderSet init];
    if (!error)
    {
      return 0;
    }
  }

  else if (!error)
  {
    return 0;
  }

  if (!*error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"RBCodableError" code:-1 userInfo:0];
  }

  return 0;
}

+ (id)decodedObjectWithData:(id)data delegate:(id)delegate error:(id *)error
{
  MEMORY[0x1EEE9AC00](self, a2);
  v6 = v5;
  v8 = v7;
  v40 = *MEMORY[0x1E69E9840];
  v22 = v9;
  v10 = objc_opt_new();
  RB::Heap::Heap(v23, v24, 4096, 0);
  v11 = v10;
  bytes = [v8 bytes];
  v13 = [v8 length];
  v25 = bytes;
  v26 = &bytes[v13];
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v29 = 0;
  v31 = 0;
  v32 = v23;
  v33 = &v21;
  RB::UntypedTable::UntypedTable(v34, 0, 0, 0, 0);
  memset(v36, 0, sizeof(v36));
  *v35 = 0u;
  uuid_clear(v37);
  v38 = 0;
  v39 = 1;
  for (i = RB::ProtobufDecoder::next_field(&v25); i; i = RB::ProtobufDecoder::next_field(&v25))
  {
    if ((i >> 3) == 15)
    {
      RB::Decoder::push_shared(&v25, i);
    }

    else if ((i >> 3) == 1)
    {
      RB::CustomShader::Closure::decode((v11 + 16), &v25);
    }

    else
    {
      RB::ProtobufDecoder::skip_field(&v25, i);
    }
  }

  v15 = v31;
  v16 = v25;
  v17 = v26;
  RB::ObjectTable::~ObjectTable((v36 + 8));
  if (v35[0])
  {
    free(v35[0]);
  }

  RB::UntypedTable::~UntypedTable(v34);
  if (v28)
  {
    free(v28);
  }

  if ((v15 & 1) != 0 || v16 > v17)
  {
    if (v6 && !*v6)
    {
      v19 = 0;
      *v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RBCodableError" code:-1 userInfo:0];
    }

    else
    {
      v19 = 0;
    }

    v18 = v10;
  }

  else
  {
    v18 = 0;
    v19 = v10;
  }

  RB::Heap::~Heap(v23);

  return v19;
}

- (void)setRBClosure:(void *)result
{
  if (result)
  {
    return RB::CustomShader::Closure::operator=(result + 2, a2);
  }

  return result;
}

- (uint64_t)initWithLibrary:(NSString *)a3 function:.cold.1(uint64_t a1, void *a2, NSString *a3)
{
  v6 = *(a1 + 8);
  if (v6 != a2)
  {

    *(a1 + 8) = a2;
  }

  if (a2)
  {
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
  }

  RB::CustomShader::Library::intern_function(v7, a3, &v10);
  result = *(a1 + 16);
  *(a1 + 16) = v10;
  v10 = result;
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    OUTLINED_FUNCTION_0();
    result = (*(v9 + 8))();
  }

  *(a1 + 192) = -1;
  return result;
}

@end