@interface PSDiagnosticSysGraph
- (PSDiagnosticSysGraph)initWithFile:(id)file;
- (int)dumpCameraStreamsToFile;
- (void)didReceiveContextForSessionName:(id)name;
- (void)didReceiveContextForSessionProvidingKeys:(id)keys;
- (void)didReceiveResponseForResourceRequest:(id)request;
- (void)logToFile:(id)file;
- (void)serverRequestedResourcesWithStrides:(id)strides;
@end

@implementation PSDiagnosticSysGraph

- (PSDiagnosticSysGraph)initWithFile:(id)file
{
  fileCopy = file;
  v13.receiver = self;
  v13.super_class = PSDiagnosticSysGraph;
  v6 = [(PSDiagnosticSysGraph *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeGraphs = v6->_activeGraphs;
    v6->_activeGraphs = v7;

    providerName = v6->_providerName;
    v6->_providerName = 0;

    v10 = dispatch_semaphore_create(0);
    submission_semaphore = v6->_submission_semaphore;
    v6->_submission_semaphore = v10;

    objc_storeStrong(&v6->_file, file);
  }

  return v6;
}

- (void)logToFile:(id)file
{
  file = self->_file;
  v4 = [file dataUsingEncoding:4];
  [(NSFileHandle *)file writeData:v4];
}

- (int)dumpCameraStreamsToFile
{
  v61[1] = *MEMORY[0x277D85DE8];
  providerName = self->_providerName;
  self->_providerName = @"get_camera_streams";

  v4 = [PSExecutionSession sharedInstanceForExecutionSessionKey:34];
  currSession = self->_currSession;
  self->_currSession = v4;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__PSDiagnosticSysGraph_dumpCameraStreamsToFile__block_invoke;
  aBlock[3] = &unk_279A48078;
  aBlock[4] = self;
  v47 = _Block_copy(aBlock);
  [PSExecutionSession registerSessionCallback:"registerSessionCallback:withContext:" withContext:?];
  [(PSExecutionSession *)self->_currSession waitForContextFromExecutionSession:0];
  context = [(PSExecutionSession *)self->_currSession context];
  plsContext = self->_plsContext;
  self->_plsContext = context;

  v8 = MEMORY[0x277CBEB58];
  v9 = [(PSContext *)self->_plsContext resourceStreamsForExecutionSession:@"CameraProvider"];
  v10 = [v8 setWithSet:v9];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"key" ascending:1 selector:sel_caseInsensitiveCompare_];
  allObjects = [v10 allObjects];
  v46 = v11;
  v61[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
  v14 = [allObjects sortedArrayUsingDescriptors:v13];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Number of streams published by CameraProvider: %lu\n", objc_msgSend(v10, "count")];
  selfCopy = self;
  [(PSDiagnosticSysGraph *)self logToFile:v15];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v55;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v54 + 1) + 8 * i);
        v23 = [v22 key];
        v24 = [v23 length];

        if (v24 > v19)
        {
          v25 = [v22 key];
          v19 = [v25 length];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v45 = v16;

  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@" %-*s    %-11s    %4s    %5s    %6s    %-6s\n", v19, "Name", "Type", "FPS", "Width", "Height", "Format"];
  [(PSDiagnosticSysGraph *)selfCopy logToFile:v26];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v14;
  v27 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v50 + 1) + 8 * j);
        v32 = MEMORY[0x277CCAB68];
        v33 = [v31 key];
        uTF8String = [v33 UTF8String];
        [v31 resourceClass];
        v35 = [v32 stringWithFormat:@" %-*s    %-11s    %4lu", v19, uTF8String, ps_resource_class_description(), objc_msgSend(v31, "framerate")];

        if ([v31 resourceClass] == 7 || objc_msgSend(v31, "resourceClass") == 8)
        {
          v36 = MEMORY[0x277CCACA8];
          v37 = v31;
          width = [v37 width];
          height = [v37 height];
          pixelFormat = [v37 pixelFormat];

          v41 = stringWithFourCharCode(pixelFormat);
          v42 = [v36 stringWithFormat:@"    %5lu    %6lu    %@", width, height, v41];
          [v35 appendString:v42];
        }

        [v35 appendString:@"\n"];
        [(PSDiagnosticSysGraph *)selfCopy logToFile:v35];
      }

      v28 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v28);
  }

  [(PSDiagnosticSysGraph *)selfCopy logToFile:@"\n"];
  [(NSFileHandle *)selfCopy->_file synchronizeFile];

  v43 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __47__PSDiagnosticSysGraph_dumpCameraStreamsToFile__block_invoke(uint64_t result, unint64_t a2)
{
  if (a2 <= 2)
  {
    return [*(result + 32) logToFile:off_279A48098[a2]];
  }

  return result;
}

- (void)didReceiveContextForSessionName:(id)name
{
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"didReceiveContextForSessionName: %@", name];
  [(PSDiagnosticSysGraph *)self logToFile:name];
}

- (void)didReceiveContextForSessionProvidingKeys:(id)keys
{
  keys = [MEMORY[0x277CCACA8] stringWithFormat:@"didReceiveContextForSessionProvidingKeys: %@", keys];
  [(PSDiagnosticSysGraph *)self logToFile:keys];
}

- (void)didReceiveResponseForResourceRequest:(id)request
{
  v4 = MEMORY[0x277CCACA8];
  requestCopy = request;
  resourcesWanted = [requestCopy resourcesWanted];
  resourcesNoLongerWanted = [requestCopy resourcesNoLongerWanted];
  v8 = [v4 stringWithFormat:@"received resource request response: wanted: %@ no longer wanted: %@", resourcesWanted, resourcesNoLongerWanted];
  [(PSDiagnosticSysGraph *)self logToFile:v8];

  requestCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"received resource request response: %@", requestCopy];

  [(PSDiagnosticSysGraph *)self logToFile:requestCopy];
}

- (void)serverRequestedResourcesWithStrides:(id)strides
{
  strides = [MEMORY[0x277CCACA8] stringWithFormat:@"serverRequestedResourcesWithStrides: %@", strides];
  [(PSDiagnosticSysGraph *)self logToFile:strides];
}

@end