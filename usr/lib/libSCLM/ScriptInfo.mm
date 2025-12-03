@interface ScriptInfo
- (ScriptInfo)initWithScriptID:(unint64_t)d scriptName:(id)name apduCount:(unsigned int)count scriptType:(unsigned int)type;
- (ScriptInfo)initWithScriptID:(unint64_t)d scriptName:(id)name apduCount:(unsigned int)count scriptType:(unsigned int)type platformCategory:(unsigned int)category isProductionSigned:(int)signed nvmRequired:(unsigned int)required corRequired:(unsigned int)self0 codRequired:(unsigned int)self1 indicesRequired:(unsigned int)self2;
@end

@implementation ScriptInfo

- (ScriptInfo)initWithScriptID:(unint64_t)d scriptName:(id)name apduCount:(unsigned int)count scriptType:(unsigned int)type
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = ScriptInfo;
  v12 = [(ScriptInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_scriptID = d;
    objc_storeStrong(&v12->_scriptName, name);
    v13->_apduCount = count;
    v13->_scriptType = type;
    v13->_platformCategory = -1;
    v13->_isProductionSigned = 0;
    *&v13->_nvmRequired = 0;
    *&v13->_codRequired = 0;
  }

  return v13;
}

- (ScriptInfo)initWithScriptID:(unint64_t)d scriptName:(id)name apduCount:(unsigned int)count scriptType:(unsigned int)type platformCategory:(unsigned int)category isProductionSigned:(int)signed nvmRequired:(unsigned int)required corRequired:(unsigned int)self0 codRequired:(unsigned int)self1 indicesRequired:(unsigned int)self2
{
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = ScriptInfo;
  v20 = [(ScriptInfo *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_scriptID = d;
    objc_storeStrong(&v20->_scriptName, name);
    v21->_apduCount = count;
    v21->_scriptType = type;
    v21->_isProductionSigned = signed != 0;
    v21->_platformCategory = category;
    v21->_nvmRequired = required;
    v21->_corRequired = corRequired;
    v21->_codRequired = codRequired;
    v21->_indicesRequired = indicesRequired;
  }

  return v21;
}

@end