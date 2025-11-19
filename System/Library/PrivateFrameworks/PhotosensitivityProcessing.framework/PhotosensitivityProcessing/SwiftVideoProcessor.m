@interface SwiftVideoProcessor
- (BOOL)copySourceOnlyDebugging;
- (BOOL)debugMode;
- (BOOL)inTestingMode;
- (id)validationCallback;
- (void)processSurfaceWithSourceSurface:(__IOSurface *)a3 timestamp:(double)a4 destinationSurface:(__IOSurface *)a5 options:(id)a6;
- (void)setCopySourceOnlyDebugging:(BOOL)a3;
- (void)setDebugMode:(BOOL)a3;
- (void)setInTestingMode:(BOOL)a3;
- (void)setValidationCallback:(id)a3;
@end

@implementation SwiftVideoProcessor

- (id)validationCallback
{
  v2 = (self + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25E792454;
    aBlock[3] = &block_descriptor_22;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setValidationCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = sub_25E798FF4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (self + OBJC_IVAR___SwiftVideoProcessor_validationCallback);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  v10 = self;
  sub_25E78D970(v6);
  sub_25E79268C(v8);
  if (v4)
  {
    sub_25E79268C(v6);
  }

  v11 = v4 != 0;
  v12 = v10 + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  v12[6] = v11;
}

- (BOOL)inTestingMode
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInTestingMode:(BOOL)a3
{
  v5 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)debugMode
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDebugMode:(BOOL)a3
{
  v5 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  v6[5] = a3;
}

- (BOOL)copySourceOnlyDebugging
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCopySourceOnlyDebugging:(BOOL)a3
{
  v5 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  v6[7] = a3;
}

- (void)processSurfaceWithSourceSurface:(__IOSurface *)a3 timestamp:(double)a4 destinationSurface:(__IOSurface *)a5 options:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  VideoProcessor.processSurface(sourceSurface:timestamp:destinationSurface:options:)(v10, a4, v11, v12);
}

@end