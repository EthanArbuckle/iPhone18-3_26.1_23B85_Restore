@interface TUExternalParticipant
- (NSData)info;
- (NSString)description;
- (NSString)displayName;
- (TUExternalParticipant)init;
- (TUExternalParticipant)initWithIdentifier:(id)a3 displayName:(id)a4 info:(id)a5 status:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUExternalParticipant

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TUExternalParticipant.encode(with:)(v4);
}

- (NSString)displayName
{
  v2 = *(self + OBJC_IVAR___TUExternalParticipant_displayName);
  v3 = *(self + OBJC_IVAR___TUExternalParticipant_displayName + 8);

  v4 = sub_19586ED30();

  return v4;
}

- (NSData)info
{
  v2 = *(self + OBJC_IVAR___TUExternalParticipant_info);
  v3 = *(self + OBJC_IVAR___TUExternalParticipant_info + 8);
  sub_195842008(v2, v3);
  v4 = sub_19586E9A0();
  sub_195841B64(v2, v3);

  return v4;
}

- (TUExternalParticipant)initWithIdentifier:(id)a3 displayName:(id)a4 info:(id)a5 status:(int64_t)a6
{
  v10 = sub_19586ED50();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = sub_19586E9B0();
  v17 = v16;

  *(self + OBJC_IVAR___TUExternalParticipant_identifier) = v13;
  v18 = (self + OBJC_IVAR___TUExternalParticipant_displayName);
  *v18 = v10;
  v18[1] = v12;
  v19 = (self + OBJC_IVAR___TUExternalParticipant_info);
  *v19 = v15;
  v19[1] = v17;
  *(self + OBJC_IVAR___TUExternalParticipant_status) = a6;
  v21.receiver = self;
  v21.super_class = TUExternalParticipant;
  return [(TUExternalParticipant *)&v21 init];
}

- (NSString)description
{
  v2 = self;
  TUExternalParticipant.description.getter();

  v3 = sub_19586ED30();

  return v3;
}

- (TUExternalParticipant)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end