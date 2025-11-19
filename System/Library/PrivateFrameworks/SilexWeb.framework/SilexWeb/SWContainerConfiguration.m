@interface SWContainerConfiguration
- (SWContainerConfiguration)initWithStoreFront:(id)a3 locale:(id)a4 contentEnvironment:(id)a5 contentSizeCategory:(id)a6 layoutGuide:(id)a7 dataSources:(id)a8 location:(id)a9 sourceURL:(id)a10 activePictureInPictureURL:(id)a11 feedConfiguration:(id)a12 supportsLiveActivities:(BOOL)a13;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SWContainerConfiguration

- (SWContainerConfiguration)initWithStoreFront:(id)a3 locale:(id)a4 contentEnvironment:(id)a5 contentSizeCategory:(id)a6 layoutGuide:(id)a7 dataSources:(id)a8 location:(id)a9 sourceURL:(id)a10 activePictureInPictureURL:(id)a11 feedConfiguration:(id)a12 supportsLiveActivities:(BOOL)a13
{
  v18 = a3;
  v19 = a4;
  v31 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v32.receiver = self;
  v32.super_class = SWContainerConfiguration;
  v27 = [(SWContainerConfiguration *)&v32 init];
  v28 = v27;
  if (v27)
  {
    [(SWContainerConfiguration *)v27 setStoreFront:v18];
    [(SWContainerConfiguration *)v28 setLocale:v19];
    [(SWContainerConfiguration *)v28 setContentEnvironment:v31];
    [(SWContainerConfiguration *)v28 setContentSizeCategory:v20];
    [(SWContainerConfiguration *)v28 setLayoutGuide:v21];
    [(SWContainerConfiguration *)v28 setDataSources:v22];
    [(SWContainerConfiguration *)v28 setLocation:v23];
    [(SWContainerConfiguration *)v28 setSourceURL:v24];
    [(SWContainerConfiguration *)v28 setActivePictureInPictureURL:v25];
    [(SWContainerConfiguration *)v28 setFeedConfiguration:v26];
    [(SWContainerConfiguration *)v28 setSupportsLiveActivities:a13];
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SWContainerConfiguration alloc];
  v5 = [(SWContainerConfiguration *)self storeFront];
  v17 = [(SWContainerConfiguration *)self locale];
  v6 = [(SWContainerConfiguration *)self contentEnvironment];
  v16 = [(SWContainerConfiguration *)self contentSizeCategory];
  v7 = [(SWContainerConfiguration *)self layoutGuide];
  v8 = [(SWContainerConfiguration *)self dataSources];
  v9 = [(SWContainerConfiguration *)self location];
  v10 = [(SWContainerConfiguration *)self sourceURL];
  v11 = [(SWContainerConfiguration *)self activePictureInPictureURL];
  v12 = [(SWContainerConfiguration *)self feedConfiguration];
  LOBYTE(v14) = [(SWContainerConfiguration *)self supportsLiveActivities];
  v15 = [(SWContainerConfiguration *)v4 initWithStoreFront:v5 locale:v17 contentEnvironment:v6 contentSizeCategory:v16 layoutGuide:v7 dataSources:v8 location:v9 sourceURL:v10 activePictureInPictureURL:v11 feedConfiguration:v12 supportsLiveActivities:v14];

  return v15;
}

@end