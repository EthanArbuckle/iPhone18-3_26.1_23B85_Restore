@interface OS_axr_data
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation OS_axr_data

- (void)dealloc
{
  (*self[2].super.super.isa)();
  v3.receiver = self;
  v3.super_class = OS_axr_data;
  [(OS_axr_data *)&v3 dealloc];
}

- (NSString)debugDescription
{
  isa = self[12].super.super.isa;
  if (isa)
  {
    v10 = 0;
    v11 = isa << 8;
    v12 = self[11].super.super.isa;
    while (1)
    {
      if (v10 && v12)
      {
        v13 = 1;
        v14 = self[11].super.super.isa;
        do
        {
          v14 = *(v14 + 1);
          if (v13 >= v10)
          {
            break;
          }

          ++v13;
        }

        while (v14);
        if (!v14)
        {
LABEL_27:
          if (GetFlagsOnceToken != -1)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v15 = *(v14 + 8) << 9;
        v16 = 1;
        v17 = self[11].super.super.isa;
        do
        {
          v17 = *(v17 + 1);
          if (v16 >= v10)
          {
            break;
          }

          ++v16;
        }

        while (v17);
        if (!v17)
        {
          if (GetFlagsOnceToken != -1)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v18 = *(v17 + 38) << 8;
        v19 = 1;
        v20 = self[11].super.super.isa;
        do
        {
          v20 = *(v20 + 1);
          if (v19 >= v10)
          {
            break;
          }

          ++v19;
        }

        while (v20);
        if (!v20)
        {
          if (GetFlagsOnceToken != -1)
          {
            goto LABEL_33;
          }

          while (1)
          {
LABEL_32:
            AXRLogError("Error: image index %lu out of range [0,%lu]", a2, v2, v3, v4, v5, v6, v7, v10);
            __break(1u);
LABEL_33:
            [OS_axr_data debugDescription];
          }
        }

        v21 = v18 + v15;
      }

      else
      {
        if (!v12)
        {
          goto LABEL_27;
        }

        v21 = (*(v12 + 38) << 8) + (*(v12 + 8) << 9);
        v20 = self[11].super.super.isa;
      }

      v11 += v21 + (*(v20 + 31) << 7);
      if (++v10 == isa)
      {
        goto LABEL_23;
      }
    }
  }

  v11 = 0;
LABEL_23:
  v22 = malloc_type_malloc(v11, 0x100004077774924uLL);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  AXRData::DebugDescription(&self[2], v22);
  v26.receiver = self;
  v26.super_class = OS_axr_data;
  v24 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@:\n%s\n", -[OS_axr_data debugDescription](&v26, sel_debugDescription), v23];
  free(v23);
  return v24;
}

@end