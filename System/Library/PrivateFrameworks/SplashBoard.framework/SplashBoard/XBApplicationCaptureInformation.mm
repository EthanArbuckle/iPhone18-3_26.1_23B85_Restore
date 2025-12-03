@interface XBApplicationCaptureInformation
- (XBApplicationCaptureInformation)initWithLaunchRequests:(id)requests captureInfos:(id)infos launchImagePaths:(id)paths;
- (id)caarPathForLaunchRequest:(id)request;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)launchImagePathForLaunchRequest:(id)request;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)estimatedMemoryImpactForLaunchRequest:(id)request;
@end

@implementation XBApplicationCaptureInformation

- (XBApplicationCaptureInformation)initWithLaunchRequests:(id)requests captureInfos:(id)infos launchImagePaths:(id)paths
{
  requestsCopy = requests;
  infosCopy = infos;
  pathsCopy = paths;
  v13 = [requestsCopy count];
  if (v13 != [infosCopy count])
  {
    [XBApplicationCaptureInformation initWithLaunchRequests:a2 captureInfos:self launchImagePaths:?];
  }

  v17.receiver = self;
  v17.super_class = XBApplicationCaptureInformation;
  v14 = [(XBApplicationCaptureInformation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_launchRequests, requests);
    objc_storeStrong(&v15->_captureInfos, infos);
    objc_storeStrong(&v15->_launchImagePaths, paths);
  }

  return v15;
}

- (unint64_t)estimatedMemoryImpactForLaunchRequest:(id)request
{
  v4 = [(NSOrderedSet *)self->_launchRequests indexOfObject:request];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  v6 = [(NSArray *)self->_captureInfos objectAtIndexedSubscript:v4];
  estimatedMemoryImpact = [v6 estimatedMemoryImpact];

  return estimatedMemoryImpact;
}

- (id)launchImagePathForLaunchRequest:(id)request
{
  v4 = [(NSOrderedSet *)self->_launchRequests indexOfObject:request];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_launchImagePaths objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (id)caarPathForLaunchRequest:(id)request
{
  v4 = [(NSOrderedSet *)self->_launchRequests indexOfObject:request];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    caarFilePath = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_captureInfos objectAtIndexedSubscript:v4];
    caarFilePath = [v6 caarFilePath];
  }

  return caarFilePath;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(XBApplicationCaptureInformation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v21 = *MEMORY[0x277D85DE8];
  succinctDescriptionBuilder = [(XBApplicationCaptureInformation *)self succinctDescriptionBuilder];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_launchRequests;
  v5 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        succinctDescription = [v9 succinctDescription];
        activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __73__XBApplicationCaptureInformation_descriptionBuilderWithMultilinePrefix___block_invoke;
        v14[3] = &unk_279CF9108;
        v14[4] = self;
        v14[5] = v9;
        v15 = succinctDescriptionBuilder;
        [v15 appendBodySectionWithName:succinctDescription multilinePrefix:activeMultilinePrefix block:v14];
      }

      v6 = [(NSOrderedSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return succinctDescriptionBuilder;
}

void __73__XBApplicationCaptureInformation_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) estimatedMemoryImpactForLaunchRequest:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (!v2)
  {
    v4 = @"Minimal";
    goto LABEL_5;
  }

  if (v2 == -1)
  {
    v4 = @"Undefined!";
LABEL_5:
    [*(a1 + 48) appendString:v4 withName:@"Estimated Memory Impact"];
    goto LABEL_7;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%zu bytes", objc_msgSend(*(a1 + 32), "estimatedMemoryImpactForLaunchRequest:", *(a1 + 40))];
  [v3 appendString:v5 withName:@"Estimated Memory Impact"];

LABEL_7:
  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) launchImagePathForLaunchRequest:*(a1 + 40)];
  [v6 appendString:v7 withName:@"Path"];

  v8 = *(a1 + 48);
  v9 = [*(a1 + 32) caarPathForLaunchRequest:*(a1 + 40)];
  [v8 appendString:v9 withName:@".caar Path" skipIfEmpty:1];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(XBApplicationCaptureInformation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  firstObject = [(NSOrderedSet *)self->_launchRequests firstObject];
  groupID = [firstObject groupID];
  [v3 appendString:groupID withName:@"groupID"];

  v6 = [v3 appendUnsignedInteger:-[NSOrderedSet count](self->_launchRequests withName:{"count"), @"launchRequests"}];

  return v3;
}

- (void)initWithLaunchRequests:(uint64_t)a1 captureInfos:(uint64_t)a2 launchImagePaths:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"XBApplicationCaptureInformation.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"[launchRequests count] == [captureInfos count]"}];
}

@end