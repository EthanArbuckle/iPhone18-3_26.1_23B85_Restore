@interface PXGSpriteStyleSerializable
- ($105A79951CE75EB7BB90BCA93995B378)spriteStyle;
- (PXGSpriteStyleSerializable)initWithSerializableObject:(id)a3;
- (id)createSerializableObject;
- (void)setSpriteStyle:(id *)a3;
@end

@implementation PXGSpriteStyleSerializable

- (void)setSpriteStyle:(id *)a3
{
  v3 = *(&a3->var1 + 12);
  *&self->_spriteStyle.alpha = *&a3->var0;
  *self[1]._anon_8 = v3;
  v4 = *&a3->var5;
  var1 = a3[1].var1;
  v6 = *&a3[1].var6;
  *self[3]._anon_8 = *&a3[1].var2;
  *&self[4].super.isa = v6;
  *&self[2].super.isa = v4;
  *&self[2]._spriteStyle.alpha = var1;
  v7 = *(&a3[2].var1 + 4);
  v8 = *&a3[2].var3;
  v9 = *(&a3[3].var1 + 8);
  *&self[6].super.isa = *&a3[2].var8;
  *&self[6]._spriteStyle.alpha = v9;
  *&self[4]._spriteStyle.alpha = v7;
  *self[5]._anon_8 = v8;
}

- ($105A79951CE75EB7BB90BCA93995B378)spriteStyle
{
  v3 = *&self[2].var8;
  *(&retstr[2].var1 + 4) = *&self[2].var3;
  *&retstr[2].var3 = v3;
  v4 = *&self[3].var4;
  *&retstr[2].var8 = *(&self[3].var1 + 8);
  *(&retstr[3].var1 + 8) = v4;
  v5 = *&self[1].var2;
  *&retstr->var5 = self[1].var1;
  retstr[1].var1 = v5;
  v6 = *(&self[2].var1 + 4);
  *&retstr[1].var2 = *&self[1].var6;
  *&retstr[1].var6 = v6;
  v7 = *&self->var5;
  *&retstr->var0 = *(&self->var1 + 12);
  *(&retstr->var1 + 12) = v7;
  return self;
}

- (id)createSerializableObject
{
  v5[21] = *MEMORY[0x277D85DE8];
  [(PXGSpriteStyleSerializable *)self spriteStyle];
  v3 = PXGSerializeSpriteStyle(v5, v2);

  return v3;
}

- (PXGSpriteStyleSerializable)initWithSerializableObject:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PXGSpriteStyleSerializable;
  v5 = [(PXGSpriteStyleSerializable *)&v7 init];
  if (v5)
  {
    PXGDeserializeSpriteStyle(v4, v8);
    [(PXGSpriteStyleSerializable *)v5 setSpriteStyle:v8];
  }

  return v5;
}

@end