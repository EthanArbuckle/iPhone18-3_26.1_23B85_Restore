@interface ShaderGraphService
+ (NSArray)builtInGeometryPropertyNames;
+ (id)archiveMaterial:(id)a3 error:(id *)a4;
+ (id)archiveSource:(id)a3 error:(id *)a4;
+ (id)materialFromGraph:(id)a3 configuration:(id)a4 error:(id *)a5;
+ (id)materialFromGraph:(id)a3 error:(id *)a4;
+ (id)metalLibraryFromMaterial:(id)a3 forDevice:(id)a4 error:(id *)a5;
+ (id)metalLibraryFromMaterial:(id)a3 forDevice:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)sourceFromArchiveData:(id)a3 error:(id *)a4;
- (ShaderGraphService)init;
@end

@implementation ShaderGraphService

- (ShaderGraphService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ShaderGraphService *)&v3 init];
}

+ (NSArray)builtInGeometryPropertyNames
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(static BuiltInDefinitionStore.shared + 24);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS11ShaderGraph11GeomPropDefV_GTt0g5(v3);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

+ (id)archiveSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  specialized static ShaderGraphService.archiveSource(_:)(a3);
  v7 = v6;
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

+ (id)sourceFromArchiveData:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = specialized static ShaderGraphService.sourceFromArchive(data:)(v5, v7);
  outlined consume of Data?(v5, v7);

  return v8;
}

+ (id)metalLibraryFromMaterial:(id)a3 forDevice:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = specialized static ShaderGraphService.createLibrary(from:device:options:)(a3, a4, v10);

  swift_unknownObjectRelease();

  return v11;
}

+ (id)materialFromGraph:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = specialized static ShaderGraphService.createMaterial(from:config:)(a3, a4);

  return v9;
}

+ (id)materialFromGraph:(id)a3 error:(id *)a4
{
  v5 = a3;
  specialized static ShaderGraphService.createMaterial(from:)(a3);
  v7 = v6;

  return v7;
}

+ (id)archiveMaterial:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = specialized static ShaderGraphService.archiveMaterial(_:)(a3);
  v8 = v7;

  v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v8);

  return v9.super.isa;
}

+ (id)metalLibraryFromMaterial:(id)a3 forDevice:(id)a4 error:(id *)a5
{
  v7 = type metadata accessor for SGREMaterialCompilationOptions();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v8[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v8[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = 0;
  v13.receiver = v8;
  v13.super_class = v7;
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = specialized static ShaderGraphService.createLibrary(from:device:options:)(a3, a4, v10);
  swift_unknownObjectRelease();

  return v11;
}

@end