@interface QSSMutableQSSVersionInfo
- (QSSMutableQSSVersionInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setQss_version_brane:(id)qss_version_brane;
- (void)setQss_version_server:(id)qss_version_server;
- (void)setQss_version_serverkit:(id)qss_version_serverkit;
- (void)setQss_version_siritts:(id)qss_version_siritts;
@end

@implementation QSSMutableQSSVersionInfo

- (void)setQss_version_siritts:(id)qss_version_siritts
{
  v4 = [qss_version_siritts copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setQss_version_serverkit:(id)qss_version_serverkit
{
  v4 = [qss_version_serverkit copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setQss_version_brane:(id)qss_version_brane
{
  v4 = [qss_version_brane copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setQss_version_server:(id)qss_version_server
{
  v4 = [qss_version_server copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableQSSVersionInfo)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableQSSVersionInfo;
  v2 = [(QSSMutableQSSVersionInfo *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end