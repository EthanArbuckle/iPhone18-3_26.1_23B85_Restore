@interface POCryptoKitAlgorithmCurve25519
- (BOOL)verifyKey:(__SecKey *)a3;
- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingCertificateString:(id)a5;
- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingKey:(__SecKey *)a5;
- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)init;
- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)initWithSecKeyAlgorithm:(const __CFString *)a3 algorithmName:(id)a4 alg:(id)a5;
- (id)signData:(id)a3 usingKey:(__SecKey *)a4 error:(id *)a5;
@end

@implementation POCryptoKitAlgorithmCurve25519

- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_25E941838();
  v5 = sub_25E941838();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(POJWTSigning *)&v8 initWithSecKeyAlgorithm:0 algorithmName:v4 alg:v5];

  return v6;
}

- (id)signData:(id)a3 usingKey:(__SecKey *)a4 error:(id *)a5
{
  v7 = sub_25E9415B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = a4;
  v14 = sub_25E941478();
  v16 = v15;

  v17 = v13;
  sub_25E941598();
  v23[1] = v14;
  v23[2] = v16;
  sub_25E917954();
  v18 = sub_25E9415A8();
  v20 = v19;

  (*(v8 + 8))(v11, v7);
  sub_25E91471C(v14, v16);
  v21 = sub_25E941458();
  sub_25E91471C(v18, v20);

  return v21;
}

- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingKey:(__SecKey *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_25E941478();
  v14 = v13;

  v15 = sub_25E941478();
  v17 = v16;

  LOBYTE(v9) = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on5usingSb10Foundation4DataV_AISo9SecKeyRefatF_0(v12, v14, v15, v17, v10);
  sub_25E91471C(v15, v17);
  sub_25E91471C(v12, v14);

  return v9 & 1;
}

- (BOOL)verifySignature:(id)a3 onData:(id)a4 usingCertificateString:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_25E941478();
  v14 = v13;

  v15 = sub_25E941478();
  v17 = v16;

  sub_25E941848();
  LOBYTE(v9) = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on22usingCertificateStringSb10Foundation4DataV_AISStF_0(v12, v14, v15, v17);

  sub_25E91471C(v15, v17);
  sub_25E91471C(v12, v14);

  return v9 & 1;
}

- (BOOL)verifyKey:(__SecKey *)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C9verifyKeyySbSo03SecH3RefaF_0(v4);

  return v6 & 1;
}

- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)initWithSecKeyAlgorithm:(const __CFString *)a3 algorithmName:(id)a4 alg:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end