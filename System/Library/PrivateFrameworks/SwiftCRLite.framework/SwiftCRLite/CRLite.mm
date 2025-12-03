@interface CRLite
- (BOOL)certStatus:(__SecCertificate *)status issuerCert:(__SecCertificate *)cert error:(id *)error;
- (BOOL)issuerEnrolled:(__SecCertificate *)enrolled error:(id *)error;
- (BOOL)loadFilter:(id)filter error:(id *)error;
- (BOOL)loadIssuers:(id)issuers error:(id *)error;
- (_TtC11SwiftCRLite6CRLite)init;
@end

@implementation CRLite

- (BOOL)loadFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  selfCopy = self;
  v7 = sub_26BDF857C();
  v9 = v8;

  sub_26BDF85AC();
  v10 = sub_26BDF859C();
  sub_26BDF697C(v7, v9);
  v11 = *(&selfCopy->super.isa + OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter);
  *(&selfCopy->super.isa + OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter) = v10;

  return 1;
}

- (BOOL)loadIssuers:(id)issuers error:(id *)error
{
  issuersCopy = issuers;
  selfCopy = self;
  v7 = sub_26BDF857C();
  v9 = v8;

  v10 = *(&selfCopy->super.isa + OBJC_IVAR____TtC11SwiftCRLite6CRLite_issuers);

  sub_26BDF4D94();

  sub_26BDF697C(v7, v9);
  return 1;
}

- (BOOL)issuerEnrolled:(__SecCertificate *)enrolled error:(id *)error
{
  enrolledCopy = enrolled;
  selfCopy = self;
  sub_26BDF3D8C(enrolledCopy);

  return 1;
}

- (BOOL)certStatus:(__SecCertificate *)status issuerCert:(__SecCertificate *)cert error:(id *)error
{
  statusCopy = status;
  certCopy = cert;
  selfCopy = self;
  sub_26BDF402C(statusCopy);

  return 1;
}

- (_TtC11SwiftCRLite6CRLite)init
{
  v3 = OBJC_IVAR____TtC11SwiftCRLite6CRLite_filter;
  *(&self->super.isa + v3) = [objc_allocWithZone(sub_26BDF85AC()) init];
  v4 = OBJC_IVAR____TtC11SwiftCRLite6CRLite_issuers;
  type metadata accessor for CRLiteIssuers();
  v5 = swift_allocObject();
  *(v5 + 2) = MEMORY[0x277D84F90];
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLite();
  return [(CRLite *)&v7 init];
}

@end