@interface ScriptInfo
- (ScriptInfo)initWithScriptID:(unint64_t)a3 scriptName:(id)a4 apduCount:(unsigned int)a5 scriptType:(unsigned int)a6;
- (ScriptInfo)initWithScriptID:(unint64_t)a3 scriptName:(id)a4 apduCount:(unsigned int)a5 scriptType:(unsigned int)a6 platformCategory:(unsigned int)a7 isProductionSigned:(int)a8 nvmRequired:(unsigned int)a9 corRequired:(unsigned int)a10 codRequired:(unsigned int)a11 indicesRequired:(unsigned int)a12;
@end

@implementation ScriptInfo

- (ScriptInfo)initWithScriptID:(unint64_t)a3 scriptName:(id)a4 apduCount:(unsigned int)a5 scriptType:(unsigned int)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = ScriptInfo;
  v12 = [(ScriptInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_scriptID = a3;
    objc_storeStrong(&v12->_scriptName, a4);
    v13->_apduCount = a5;
    v13->_scriptType = a6;
    v13->_platformCategory = -1;
    v13->_isProductionSigned = 0;
    *&v13->_nvmRequired = 0;
    *&v13->_codRequired = 0;
  }

  return v13;
}

- (ScriptInfo)initWithScriptID:(unint64_t)a3 scriptName:(id)a4 apduCount:(unsigned int)a5 scriptType:(unsigned int)a6 platformCategory:(unsigned int)a7 isProductionSigned:(int)a8 nvmRequired:(unsigned int)a9 corRequired:(unsigned int)a10 codRequired:(unsigned int)a11 indicesRequired:(unsigned int)a12
{
  v19 = a4;
  v23.receiver = self;
  v23.super_class = ScriptInfo;
  v20 = [(ScriptInfo *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_scriptID = a3;
    objc_storeStrong(&v20->_scriptName, a4);
    v21->_apduCount = a5;
    v21->_scriptType = a6;
    v21->_isProductionSigned = a8 != 0;
    v21->_platformCategory = a7;
    v21->_nvmRequired = a9;
    v21->_corRequired = a10;
    v21->_codRequired = a11;
    v21->_indicesRequired = a12;
  }

  return v21;
}

@end