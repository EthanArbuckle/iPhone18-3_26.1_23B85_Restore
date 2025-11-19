@interface AppStateMonitor
- (void)publishAppDidBecomeActive;
- (void)publishAppDidEnterBackground;
- (void)publishAppWillEnterForeground;
- (void)publishAppWillResignActive;
- (void)publishAppWillTerminate;
- (void)publishSignificantTimeChanged;
@end

@implementation AppStateMonitor

- (void)publishAppDidBecomeActive
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20B86FB30();
  sub_20C13A764();
}

- (void)publishAppWillEnterForeground
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20B621B88();
  sub_20C13A764();
}

- (void)publishAppWillResignActive
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20B86FADC();
  sub_20C13A764();
}

- (void)publishAppDidEnterBackground
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20B86FA88();
  sub_20C13A764();
}

- (void)publishAppWillTerminate
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20B86FA34();
  sub_20C13A764();
}

- (void)publishSignificantTimeChanged
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20B5237AC();
  sub_20C13A764();
}

@end