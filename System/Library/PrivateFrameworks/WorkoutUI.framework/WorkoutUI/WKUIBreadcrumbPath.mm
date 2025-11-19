@interface WKUIBreadcrumbPath
- ($44DB91ABE188F3342F2E860183E7D78B)boundingMapRect;
- (CLLocationCoordinate2D)coordinate;
- (_TtC9WorkoutUI18WKUIBreadcrumbPath)init;
- (void)setCoordinate:(CLLocationCoordinate2D)a3;
@end

@implementation WKUIBreadcrumbPath

- ($44DB91ABE188F3342F2E860183E7D78B)boundingMapRect
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_boundingMapRect);
  v3 = *(&self->boundingMapRect.var0.var0 + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_boundingMapRect);
  v4 = *(&self->boundingMapRect.var0.var1 + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_boundingMapRect);
  v5 = *(&self->boundingMapRect.var1.var0 + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_boundingMapRect);
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = (self + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.longitude = v4;
  result.latitude = v3;
  return result;
}

- (void)setCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = (self + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate);
  swift_beginAccess();
  *v5 = latitude;
  v5[1] = longitude;
}

- (_TtC9WorkoutUI18WKUIBreadcrumbPath)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_boundingMapRect);
  v4 = *MEMORY[0x277CD4BB8];
  v5 = *(MEMORY[0x277CD4BB8] + 8);
  v6 = *(MEMORY[0x277CD4BB8] + 16);
  v7 = *(MEMORY[0x277CD4BB8] + 24);
  *v3 = *MEMORY[0x277CD4BB8];
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  v8 = (&self->super.isa + OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_coordinate);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC9WorkoutUI18WKUIBreadcrumbPath_protectedBreadcrumbData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy9WorkoutUI18WKUIBreadcrumbPathC14BreadcrumbData33_DEB42BD608773CB55C8F413DFA93ADD5LLVSo16os_unfair_lock_sVGMd);
  v10 = swift_allocObject();
  *(v10 + 56) = 0;
  *(v10 + 16) = MEMORY[0x277D84F90];
  *(v10 + 24) = v4;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(&self->super.isa + v9) = v10;
  v12.receiver = self;
  v12.super_class = type metadata accessor for WKUIBreadcrumbPath();
  return [(WKUIBreadcrumbPath *)&v12 init];
}

@end