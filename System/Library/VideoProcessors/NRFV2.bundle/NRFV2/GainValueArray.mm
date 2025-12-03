@interface GainValueArray
- (GainValueArray)initWithArray:(id)array;
- (void)dealloc;
@end

@implementation GainValueArray

- (GainValueArray)initWithArray:(id)array
{
  arrayCopy = array;
  v20.receiver = self;
  v20.super_class = GainValueArray;
  v8 = [(GainValueArray *)&v20 init];
  if (v8)
  {
    v9 = objc_msgSend_count(arrayCopy, v5, v6, v7);
    if (v9)
    {
      sub_2958ACB88();
    }

    else
    {
      if (!v8->elements)
      {
        v8->length = v9 >> 1;
        v8->elements = malloc_type_calloc(v9 >> 1, 8uLL, 0x100004000313F17uLL);
        if (v8->length)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            objc_msgSend_cmi_floatValueForIndex_(arrayCopy, v10, (v12 * 2), v11);
            v8->elements[v12].var0 = v14;
            objc_msgSend_cmi_floatValueForIndex_(arrayCopy, v15, (v12 * 2 + 1), v16);
            v8->elements[v12].var1 = v17;
            ++v13;
            ++v12;
          }

          while (v13 < v8->length);
        }

        goto LABEL_7;
      }

      sub_2958ACBE8();
    }

    v18 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v18 = v8;
LABEL_8:

  return v18;
}

- (void)dealloc
{
  elements = self->elements;
  if (elements)
  {
    free(elements);
  }

  self->elements = 0;
  self->length = 0;
  v4.receiver = self;
  v4.super_class = GainValueArray;
  [(GainValueArray *)&v4 dealloc];
}

@end