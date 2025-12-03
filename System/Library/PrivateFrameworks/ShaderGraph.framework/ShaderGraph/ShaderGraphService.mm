@interface ShaderGraphService
+ (NSArray)builtInGeometryPropertyNames;
+ (id)archiveMaterial:(id)material error:(id *)error;
+ (id)archiveSource:(id)source error:(id *)error;
+ (id)materialFromGraph:(id)graph configuration:(id)configuration error:(id *)error;
+ (id)materialFromGraph:(id)graph error:(id *)error;
+ (id)metalLibraryFromMaterial:(id)material forDevice:(id)device error:(id *)error;
+ (id)metalLibraryFromMaterial:(id)material forDevice:(id)device options:(id)options error:(id *)error;
+ (id)sourceFromArchiveData:(id)data error:(id *)error;
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

+ (id)archiveSource:(id)source error:(id *)error
{
  sourceCopy = source;
  specialized static ShaderGraphService.archiveSource(_:)(source);
  v7 = v6;
  v9 = v8;

  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v7, v9);

  return v10.super.isa;
}

+ (id)sourceFromArchiveData:(id)data error:(id *)error
{
  if (data)
  {
    dataCopy = data;
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

+ (id)metalLibraryFromMaterial:(id)material forDevice:(id)device options:(id)options error:(id *)error
{
  materialCopy = material;
  swift_unknownObjectRetain();
  optionsCopy = options;
  v11 = specialized static ShaderGraphService.createLibrary(from:device:options:)(material, device, optionsCopy);

  swift_unknownObjectRelease();

  return v11;
}

+ (id)materialFromGraph:(id)graph configuration:(id)configuration error:(id *)error
{
  graphCopy = graph;
  configurationCopy = configuration;
  v9 = specialized static ShaderGraphService.createMaterial(from:config:)(graph, configuration);

  return v9;
}

+ (id)materialFromGraph:(id)graph error:(id *)error
{
  graphCopy = graph;
  specialized static ShaderGraphService.createMaterial(from:)(graph);
  v7 = v6;

  return v7;
}

+ (id)archiveMaterial:(id)material error:(id *)error
{
  materialCopy = material;
  v6 = specialized static ShaderGraphService.archiveMaterial(_:)(material);
  v8 = v7;

  v9.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v8);

  return v9.super.isa;
}

+ (id)metalLibraryFromMaterial:(id)material forDevice:(id)device error:(id *)error
{
  v7 = type metadata accessor for SGREMaterialCompilationOptions();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial] = 1;
  v8[OBJC_IVAR___SGREMaterialCompilationOptions_forceEnableTier1FallbackSupport] = 0;
  *&v8[OBJC_IVAR___SGREMaterialCompilationOptions_workingColorSpace] = 0;
  v13.receiver = v8;
  v13.super_class = v7;
  materialCopy = material;
  swift_unknownObjectRetain();
  v10 = objc_msgSendSuper2(&v13, sel_init);
  v11 = specialized static ShaderGraphService.createLibrary(from:device:options:)(material, device, v10);
  swift_unknownObjectRelease();

  return v11;
}

@end