@interface G2PFactoredObjc
- (G2PFactoredObjc)init;
- (id)getPhrasePronounciationWithPhrase:(id)a3 wordSep:(id)a4 prefixWithPhrase:(BOOL)a5;
- (id)getPronounciationWithWord:(id)a3;
- (void)setup;
@end

@implementation G2PFactoredObjc

- (void)setup
{
  v3 = *(type metadata accessor for G2PFactored() + 80);
  v5 = self;
  v4 = v3();
  (*((*MEMORY[0x277D85000] & v5->super.isa) + 0x68))(v4);
}

- (id)getPhrasePronounciationWithPhrase:(id)a3 wordSep:(id)a4 prefixWithPhrase:(BOOL)a5
{
  v5 = a5;
  v7 = sub_27237782C();
  v9 = v8;
  v10 = sub_27237782C();
  v12 = v11;
  v13 = self;
  sub_2722E140C(v7, v9, v10, v12, v5);
  v15 = v14;

  if (v15)
  {
    v16 = sub_2723777FC();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)getPronounciationWithWord:(id)a3
{
  v4 = sub_27237782C();
  v6 = v5;
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x60);
  v9 = self;
  v10 = v8();
  if (v10)
  {
    v11 = v10;
    (*((*v7 & *v10) + 0x58))(v4, v6);

    v12 = sub_2723777FC();

    v13 = v12;
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (G2PFactoredObjc)init
{
  sub_27237727C();
  *(&self->super.isa + OBJC_IVAR___G2PFactoredObjc_g2p) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for G2P();
  return [(G2PFactoredObjc *)&v4 init];
}

@end