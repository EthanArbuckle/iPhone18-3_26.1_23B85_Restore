@interface SWContainerConfiguration
- (SWContainerConfiguration)initWithStoreFront:(id)front locale:(id)locale contentEnvironment:(id)environment contentSizeCategory:(id)category layoutGuide:(id)guide dataSources:(id)sources location:(id)location sourceURL:(id)self0 activePictureInPictureURL:(id)self1 feedConfiguration:(id)self2 supportsLiveActivities:(BOOL)self3;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SWContainerConfiguration

- (SWContainerConfiguration)initWithStoreFront:(id)front locale:(id)locale contentEnvironment:(id)environment contentSizeCategory:(id)category layoutGuide:(id)guide dataSources:(id)sources location:(id)location sourceURL:(id)self0 activePictureInPictureURL:(id)self1 feedConfiguration:(id)self2 supportsLiveActivities:(BOOL)self3
{
  frontCopy = front;
  localeCopy = locale;
  environmentCopy = environment;
  categoryCopy = category;
  guideCopy = guide;
  sourcesCopy = sources;
  locationCopy = location;
  lCopy = l;
  rLCopy = rL;
  configurationCopy = configuration;
  v32.receiver = self;
  v32.super_class = SWContainerConfiguration;
  v27 = [(SWContainerConfiguration *)&v32 init];
  v28 = v27;
  if (v27)
  {
    [(SWContainerConfiguration *)v27 setStoreFront:frontCopy];
    [(SWContainerConfiguration *)v28 setLocale:localeCopy];
    [(SWContainerConfiguration *)v28 setContentEnvironment:environmentCopy];
    [(SWContainerConfiguration *)v28 setContentSizeCategory:categoryCopy];
    [(SWContainerConfiguration *)v28 setLayoutGuide:guideCopy];
    [(SWContainerConfiguration *)v28 setDataSources:sourcesCopy];
    [(SWContainerConfiguration *)v28 setLocation:locationCopy];
    [(SWContainerConfiguration *)v28 setSourceURL:lCopy];
    [(SWContainerConfiguration *)v28 setActivePictureInPictureURL:rLCopy];
    [(SWContainerConfiguration *)v28 setFeedConfiguration:configurationCopy];
    [(SWContainerConfiguration *)v28 setSupportsLiveActivities:activities];
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SWContainerConfiguration alloc];
  storeFront = [(SWContainerConfiguration *)self storeFront];
  locale = [(SWContainerConfiguration *)self locale];
  contentEnvironment = [(SWContainerConfiguration *)self contentEnvironment];
  contentSizeCategory = [(SWContainerConfiguration *)self contentSizeCategory];
  layoutGuide = [(SWContainerConfiguration *)self layoutGuide];
  dataSources = [(SWContainerConfiguration *)self dataSources];
  location = [(SWContainerConfiguration *)self location];
  sourceURL = [(SWContainerConfiguration *)self sourceURL];
  activePictureInPictureURL = [(SWContainerConfiguration *)self activePictureInPictureURL];
  feedConfiguration = [(SWContainerConfiguration *)self feedConfiguration];
  LOBYTE(v14) = [(SWContainerConfiguration *)self supportsLiveActivities];
  v15 = [(SWContainerConfiguration *)v4 initWithStoreFront:storeFront locale:locale contentEnvironment:contentEnvironment contentSizeCategory:contentSizeCategory layoutGuide:layoutGuide dataSources:dataSources location:location sourceURL:sourceURL activePictureInPictureURL:activePictureInPictureURL feedConfiguration:feedConfiguration supportsLiveActivities:v14];

  return v15;
}

@end