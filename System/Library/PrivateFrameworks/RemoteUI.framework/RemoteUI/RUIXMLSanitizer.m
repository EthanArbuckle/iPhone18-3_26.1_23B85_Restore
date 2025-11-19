@interface RUIXMLSanitizer
- (RUIXMLSanitizer)init;
- (id)logStringWithXMLString:(id)a3 error:(id *)a4;
- (id)sanitizedDataWithElement:(id)a3 error:(id *)a4;
- (id)sanitizedXML:(id)a3 error:(id *)a4;
- (id)sanitizedXMLElementWithData:(id)a3 error:(id *)a4;
@end

@implementation RUIXMLSanitizer

- (RUIXMLSanitizer)init
{
  ObjectType = swift_getObjectType();
  v4 = _sSo11RUIPlatformC8RemoteUIE17isSolariumEnabledSbvgZ_0(ObjectType, v3);
  v5 = 20;
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  v8 = v5;
  v6 = (*(ObjectType + 112))(&v8);
  swift_deallocPartialClassInstance();
  return v6;
}

- (id)sanitizedXML:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_21BA864DC();
  v9 = v8;

  v10 = sub_21BA5D6B8();
  v12 = v11;

  sub_21B9B37F0(v7, v9);
  v13 = sub_21BA864CC();
  sub_21B9B37F0(v10, v12);

  return v13;
}

- (id)sanitizedDataWithElement:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_21BA5DAE8();
  v9 = v8;

  v10 = sub_21BA864CC();
  sub_21B9B37F0(v7, v9);

  return v10;
}

- (id)sanitizedXMLElementWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_21BA864DC();
  v9 = v8;

  v10 = Data.xmlElement()();
  v11 = (*((*MEMORY[0x277D85000] & v6->super.isa) + 0x90))();

  sub_21B9B37F0(v7, v9);

  return v11;
}

- (id)logStringWithXMLString:(id)a3 error:(id *)a4
{
  v5 = sub_21BA87CBC();
  v7 = v6;
  v8 = self;
  sub_21BA68A68(v5, v7);

  v9 = sub_21BA87C8C();

  return v9;
}

@end