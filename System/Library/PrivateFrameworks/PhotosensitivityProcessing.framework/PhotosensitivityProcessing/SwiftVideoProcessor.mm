@interface SwiftVideoProcessor
- (BOOL)copySourceOnlyDebugging;
- (BOOL)debugMode;
- (BOOL)inTestingMode;
- (id)validationCallback;
- (void)processSurfaceWithSourceSurface:(__IOSurface *)surface timestamp:(double)timestamp destinationSurface:(__IOSurface *)destinationSurface options:(id)options;
- (void)setCopySourceOnlyDebugging:(BOOL)debugging;
- (void)setDebugMode:(BOOL)mode;
- (void)setInTestingMode:(BOOL)mode;
- (void)setValidationCallback:(id)callback;
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

- (void)setValidationCallback:(id)callback
{
  v4 = _Block_copy(callback);
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
  selfCopy = self;
  sub_25E78D970(v6);
  sub_25E79268C(v8);
  if (v4)
  {
    sub_25E79268C(v6);
  }

  v11 = v4 != 0;
  v12 = selfCopy + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  v12[6] = v11;
}

- (BOOL)inTestingMode
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setInTestingMode:(BOOL)mode
{
  v5 = OBJC_IVAR___SwiftVideoProcessor_inTestingMode;
  swift_beginAccess();
  *(self + v5) = mode;
}

- (BOOL)debugMode
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDebugMode:(BOOL)mode
{
  v5 = OBJC_IVAR___SwiftVideoProcessor_debugMode;
  swift_beginAccess();
  *(self + v5) = mode;
  v6 = self + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  v6[5] = mode;
}

- (BOOL)copySourceOnlyDebugging
{
  v3 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCopySourceOnlyDebugging:(BOOL)debugging
{
  v5 = OBJC_IVAR___SwiftVideoProcessor_copySourceOnlyDebugging;
  swift_beginAccess();
  *(self + v5) = debugging;
  v6 = self + OBJC_IVAR___SwiftVideoProcessor_bufferConstants;
  swift_beginAccess();
  v6[7] = debugging;
}

- (void)processSurfaceWithSourceSurface:(__IOSurface *)surface timestamp:(double)timestamp destinationSurface:(__IOSurface *)destinationSurface options:(id)options
{
  surfaceCopy = surface;
  destinationSurfaceCopy = destinationSurface;
  optionsCopy = options;
  selfCopy = self;
  VideoProcessor.processSurface(sourceSurface:timestamp:destinationSurface:options:)(surfaceCopy, timestamp, destinationSurfaceCopy, optionsCopy);
}

@end