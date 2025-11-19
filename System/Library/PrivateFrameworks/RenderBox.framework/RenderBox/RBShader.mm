@interface RBShader
+ (id)decodedObjectWithData:(id)a3 delegate:(id)a4 error:(id *)a5;
- ($B8E3DD8A8954C8C133399D0883B251E3)argumentAtIndex:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)CIFilterCTM;
- (RBShader)initWithLibrary:(id)a3 function:(id)a4;
- (RBShader)initWithSystemShader:(id)a3;
- (float)argumentHeadroomAtIndex:(unint64_t)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodedDataForDelegate:(id)a3 error:(id *)a4;
- (void)removeAllArguments;
- (void)setArgumentBytes:(const void *)a3 atIndex:(unint64_t)a4 type:(unsigned int)a5 count:(unint64_t)a6 flags:(unsigned int)a7;
- (void)setArgumentColorSpace:(int)a3 atIndex:(unint64_t)a4;
- (void)setArgumentData:(id)a3 atIndex:(unint64_t)a4 type:(unsigned int)a5 flags:(unsigned int)a6;
- (void)setArgumentHeadroom:(float)a3 atIndex:(unint64_t)a4;
- (void)setCIFilterCTM:(CGAffineTransform *)a3;
- (void)setCIFilterProvider:(id)a3;
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

- (RBShader)initWithLibrary:(id)a3 function:(id)a4
{
  v9.receiver = self;
  v9.super_class = RBShader;
  v6 = [(RBShader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(RBShader *)v6 initWithLibrary:a3 function:a4];
  }

  return v7;
}

- (RBShader)initWithSystemShader:(id)a3
{
  v5 = +[RBShaderLibrary systemLibrary];

  return [(RBShader *)self initWithLibrary:v5 function:a3];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_type != *(a3 + 48) || self->_library._p != *(a3 + 1))
  {
    return 0;
  }

  return RB::CustomShader::Closure::operator==(&self->_fn_args, a3 + 2);
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

- (void)setArgumentBytes:(const void *)a3 atIndex:(unint64_t)a4 type:(unsigned int)a5 count:(unint64_t)a6 flags:(unsigned int)a7
{
  v7 = a7;
  v9 = a5;
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, a4);
  p_2 = self->_fn_args.args._p_2;
  if (!p_2)
  {
    p_2 = &self->_fn_args.args;
  }

  RB::CustomShader::Value::set_bytes(p_2 + 32 * a4, v9, a6, a3);
  p = self->_fn_args.args._p_2;
  if (!p)
  {
    p = self->_fn_args.args._p;
  }

  p[32 * a4 + 9] = p[32 * a4 + 9] & 0xFE | v7 & 1;
  v15 = self->_fn_args.args._p_2;
  if (!v15)
  {
    v15 = self->_fn_args.args._p;
  }

  v15[32 * a4 + 9] = v15[32 * a4 + 9] & 0xFD | v7 & 2;
}

- (void)setArgumentData:(id)a3 atIndex:(unint64_t)a4 type:(unsigned int)a5 flags:(unsigned int)a6
{
  v6 = a6;
  v7 = a5;
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, a4);
  p_2 = self->_fn_args.args._p_2;
  if (!p_2)
  {
    p_2 = &self->_fn_args.args;
  }

  RB::CustomShader::Value::set_data(p_2 + 32 * a4, v7, a3);
  p = self->_fn_args.args._p_2;
  if (!p)
  {
    p = self->_fn_args.args._p;
  }

  p[32 * a4 + 9] = p[32 * a4 + 9] & 0xFE | v6 & 1;
  v13 = self->_fn_args.args._p_2;
  if (!v13)
  {
    v13 = self->_fn_args.args._p;
  }

  v13[32 * a4 + 9] = v13[32 * a4 + 9] & 0xFD | v6 & 2;
}

- (void)setArgumentColorSpace:(int)a3 atIndex:(unint64_t)a4
{
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, a4);
  v7 = rb_color_space(a3);
  p_args = &self->_fn_args.args;
  if (self->_fn_args.args._p_2)
  {
    p_args = self->_fn_args.args._p_2;
  }

  *&p_args[32 * a4 + 7] = v7;
}

- (void)setArgumentHeadroom:(float)a3 atIndex:(unint64_t)a4
{
  _S8 = a3;
  RB::CustomShader::Closure::ensure_arg(&self->_fn_args, a4);
  __asm { FCVT            H0, S8 }

  p = self->_fn_args.args._p;
  if (self->_fn_args.args._p_2)
  {
    p = self->_fn_args.args._p_2;
  }

  p[16 * a4 + 2] = _H0;
}

- (float)argumentHeadroomAtIndex:(unint64_t)a3
{
  result = 0.0;
  if (self->_fn_args.args._size > a3)
  {
    p = self->_fn_args.args._p;
    if (self->_fn_args.args._p_2)
    {
      p = self->_fn_args.args._p_2;
    }

    _H0 = p[16 * a3 + 2];
    __asm { FCVT            S0, H0 }
  }

  return result;
}

- ($B8E3DD8A8954C8C133399D0883B251E3)argumentAtIndex:(SEL)a3
{
  if (self->_fn_args.args._size <= a4)
  {
    RB::precondition_failure("invalid argument index: %ld", a3, a4);
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

- (void)setCIFilterProvider:(id)a3
{
  v4 = [a3 copy];

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

- (void)setCIFilterCTM:(CGAffineTransform *)a3
{
  ptr = self->_cifilter_ctm.__ptr_;
  if (!ptr)
  {
    operator new();
  }

  v4 = *&a3->a;
  v5 = *&a3->tx;
  *&ptr->c = *&a3->c;
  *&ptr->tx = v5;
  *&ptr->a = v4;
}

- (id)encodedDataForDelegate:(id)a3 error:(id *)a4
{
  v8[0] = &unk_1F0A38EC0;
  v8[1] = a3;
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
    if (!a4)
    {
      return 0;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  if (!*a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RBCodableError" code:-1 userInfo:0];
  }

  return 0;
}

+ (id)decodedObjectWithData:(id)a3 delegate:(id)a4 error:(id *)a5
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = v5;
  v8 = v7;
  v40 = *MEMORY[0x1E69E9840];
  v22 = v9;
  v10 = objc_opt_new();
  RB::Heap::Heap(v23, v24, 4096, 0);
  v11 = v10;
  v12 = [v8 bytes];
  v13 = [v8 length];
  v25 = v12;
  v26 = &v12[v13];
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