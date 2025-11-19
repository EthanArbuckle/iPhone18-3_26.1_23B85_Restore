@interface G2PFactoredInternal
- (G2PFactoredInternal)init;
- (id)getPronounciationStringWithWord:(id)a3 error:(id *)a4;
- (id)getPronounciationWithWord:(id)a3 error:(id *)a4;
@end

@implementation G2PFactoredInternal

- (id)getPronounciationStringWithWord:(id)a3 error:(id *)a4
{
  v5 = sub_27237782C();
  v7 = v6;
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x68);
  v9 = self;
  v8(v5, v7);

  v10 = sub_2723777FC();

  return v10;
}

- (id)getPronounciationWithWord:(id)a3 error:(id *)a4
{
  v5 = sub_27237782C();
  v7 = v6;
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x68);
  v9 = self;
  v8(v5, v7);

  v10 = sub_272377AEC();

  return v10;
}

- (G2PFactoredInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for G2PFactored();
  return [(G2PFactoredInternal *)&v3 init];
}

@end