@interface __MRCCFTypeWithRedactedDescription
- (NSString)redactedDescription;
@end

@implementation __MRCCFTypeWithRedactedDescription

- (NSString)redactedDescription
{
  v4 = objc_msgSend__cfTypeID(self, a2, v2);
  os_unfair_lock_lock_with_options();
  if (qword_280CB3498[0] != -1)
  {
    dispatch_once(qword_280CB3498, &unk_2873D07E0);
  }

  if (!*(&xmmword_280CB34A8 + 1))
  {
    goto LABEL_20;
  }

  v5 = vcnt_s8(*(&xmmword_280CB34A8 + 8));
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *(&xmmword_280CB34A8 + 1))
    {
      v6 = v4 % *(&xmmword_280CB34A8 + 1);
    }
  }

  else
  {
    v6 = (*(&xmmword_280CB34A8 + 1) - 1) & v4;
  }

  v7 = *(xmmword_280CB34A8 + 8 * v6);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      do
      {
        v9 = v8[1];
        if (v9 == v4)
        {
          if (v8[2] == v4)
          {
            break;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *(&xmmword_280CB34A8 + 1))
            {
              v9 %= *(&xmmword_280CB34A8 + 1);
            }
          }

          else
          {
            v9 &= *(&xmmword_280CB34A8 + 1) - 1;
          }

          if (v9 != v6)
          {
            goto LABEL_20;
          }
        }

        v8 = *v8;
      }

      while (v8);
    }
  }

  else
  {
LABEL_20:
    v8 = 0;
  }

  if (v8)
  {
    os_unfair_lock_unlock(&unk_280CB3250);
    v14[1] = self;
    v10 = v8[6];
    if (!v10)
    {
      sub_261477FC4();
    }

    (*(*v10 + 48))(v14);
    v11 = atomic_exchange(v14, 0);
    sub_26148E848(v14);
    return v11;
  }

  else
  {
    os_unfair_lock_unlock(&unk_280CB3250);

    return MEMORY[0x2821F9670](self, sel_description, v13);
  }
}

@end