uint64_t md::Logic<md::LocalNorthLogic,md::LocalNorthLogicContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC81F81A7CB7767BBLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::SceneContext,md::CameraContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x63B6FE00C0848868)
  {
    v16[11] = v3;
    v16[12] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1AF456233693CD46uLL);
      if (v9 && (v14 = v9[5], *(v14 + 8) == 0x1AF456233693CD46))
      {
        v10 = *(v14 + 32);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x8BD499FBD96FBB9ELL)[5] + 32);
      v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x1B8B241A8D896A1DuLL);
      if (v12 && (v15 = v12[5], *(v15 + 8) == 0x1B8B241A8D896A1DLL))
      {
        v13 = *(v15 + 32);
      }

      else
      {
        v13 = 0;
      }

      v16[0] = v10;
      v16[1] = v11;
      v16[2] = v13;
      return (*(*v7 + 152))(v7, a2, v16, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x63B6FE00C0848868)
  {
    v8[7] = v3;
    v8[8] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 136))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x521897C68EA476F3)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x412AFB1345D08930uLL);
      if (v10 && (v12 = v10[5], *(v12 + 8) == 0x412AFB1345D08930))
      {
        v11 = *(v12 + 32);
      }

      else
      {
        v11 = 0;
      }

      v13[0] = v9;
      v13[1] = v11;
      return (*(*v7 + 152))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x521897C68EA476F3)
  {
    v9[6] = v3;
    v9[7] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v9[0] = md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>::resolveDependencies(*(a2 + 8));
      v9[1] = v8;
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::BVHDebugLogic,md::BVHDebugContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xEB7D991403622616)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::BVHDebugLogic,md::BVHDebugContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xEB7D991403622616)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::EntityDebugHighlightLogic,md::EntityDebugHighlightContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE75FAB3171C16149)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x1AF456233693CD46))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xFBD83FDA8879FF7ELL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0xFBD83FDA8879FF7ELL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x3070CB6B3C7F21D3uLL);
      if (v13 && (v14 = v13[5], *(v14 + 8) == 0x3070CB6B3C7F21D3))
      {
        v15 = *(v14 + 32);
      }

      else
      {
        v15 = 0;
      }

      v16 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xD2404CDD1F9A6950)[5] + 32);
      v17[0] = v9;
      v17[1] = v12;
      v17[2] = v15;
      v17[3] = v16;
      return (*(*v5 + 152))(v5, a2, v17, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::EntityDebugHighlightLogic,md::EntityDebugHighlightContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE75FAB3171C16149)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::GeometryContext,md::MaterialContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x41E8D6E445F4145)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::LightingLogic,md::LightingLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x41E8D6E445F4145)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext,md::SceneContext,md::ElevationContext,md::SettingsContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ElevatedOverlayLogic,md::ElevatedOverlayContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1DCE255EA309B4ADLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x1AF456233693CD46))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 152))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ElevatedOverlayLogic,md::ElevatedOverlayContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1DCE255EA309B4ADLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MapZoomLevelStyleLogic,md::MapZoomLevelStyleLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF0AA2DB42EB710AFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x1AF456233693CD46))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 152))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MapZoomLevelStyleLogic,md::MapZoomLevelStyleLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF0AA2DB42EB710AFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::HikingLogic,md::HikingContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x92F3DC114CADB853)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::HikingLogic,md::HikingContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x92F3DC114CADB853)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext,md::StyleLogicContext,md::SettingsContext,md::NavigationContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x7C7EC6C7C111B0D0)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v10 = v7[5], *(v10 + 8) == 0x1AF456233693CD46))
      {
        v8 = *(v10 + 32);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xE42D19AFCA302E68)[5] + 32);
      v11[0] = v8;
      v11[1] = v9;
      return (*(*v5 + 152))(v5, a2, v11, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::SkyLogic,md::SkyLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x7C7EC6C7C111B0D0)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::StyleLogicContext>(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::mun::MuninLogic,md::mun::MuninContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x8EA84A1BD3791AFALL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x99BED48DEFBBD82BLL))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 152))(v5, a2, v14, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::mun::MuninLogic,md::mun::MuninContext,md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x8EA84A1BD3791AFALL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::SceneContext,md::CameraContext,md::ElevationContext>,gdc::TypeList<>>::buildRequiredTuple<md::SceneContext,md::CameraContext,md::ElevationContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::LoadingStatusTracker::didLayout(uint64_t this)
{
  if (*(this + 90) == 1 && *(this + 89) == 1)
  {
    *(this + 90) = 0;
    v3 = *(this + 216);
    if (v3)
    {
      v5 = v1;
      v6 = v2;
      v4 = *(this + 88);
      return (*(*v3 + 48))(v3, &v4);
    }
  }

  return this;
}

uint64_t ggl::MetalSwapchainDrawableRef::makeReady(ggl::MetalSwapchainDrawableRef *this)
{
  v2 = 0;
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  atomic_compare_exchange_strong((v1 + 132), &v2, 2u);
  if (!v2)
  {
    v3 = *(*(v1 + 80) + 16);
    [v3 drawableSize];
    v6 = *(v1 + 96);
    LODWORD(v7) = *(v6 + 80);
    if (v4 == v7 || (LODWORD(v4) = *(v6 + 84), v5 == *&v4))
    {
      v10 = [v3 nextDrawable];
      if (v10)
      {
        std::mutex::lock(v1);
        ggl::MetalResourceManager::updateTextureWithResource(*(*(v1 + 64) + 80), *(v1 + 96), [v10 texture]);
        operator new();
      }

      if (atomic_fetch_add((v1 + 136), 1u) < 0xB)
      {
        atomic_exchange((v1 + 132), 0);
        v9 = 1;
      }

      else
      {
        atomic_exchange((v1 + 132), 4u);
        v9 = 2;
      }

      goto LABEL_18;
    }

    atomic_exchange((v1 + 132), 4u);
    v8 = GEOGetGeoGLMetalSwapchainLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "false";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalSwapchainDrawable.mm";
      v15 = 1024;
      v16 = 128;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_ERROR, "Mismatching texture size: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

LABEL_10:
    v9 = 2;
LABEL_18:

    return v9;
  }

  if (v2 == 4)
  {
    v3 = GEOGetGeoGLMetalSwapchainLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315650;
      *&buf[1] = "false";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoGL/GeoGL/MetalSwapchainDrawable.mm";
      v15 = 1024;
      v16 = 115;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_ERROR, "Failed to make drawable ready: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  return 1;
}

void sub_1B2AE3FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<ggl::MetalSurfaceDrawable>::~unique_ptr[abi:nn200100](va);
  std::mutex::unlock(v4);

  _Unwind_Resume(a1);
}

void md::ElevatedStrokeLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t *a2@<X2>, _OWORD *a3@<X8>)
{
  v127 = *MEMORY[0x1E69E9840];
  memset(v111, 0, sizeof(v111));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a2, a2[1], v111);
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (*(a1 + 592) != *v4)
    {
      v4 += 24;
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    if (v4 != v5)
    {
      v6 = *(v4 + 3);
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v10 = v6[14];
          v9 = v6[15];
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            v11 = *(a1 + 592);
            v8 = v109;
            v12 = v110;
            if (v109 < v110)
            {
              *v109 = v11;
              *(v8 + 1) = v10;
              *(v8 + 2) = v9;
              atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_13:
              v8 += 24;
              goto LABEL_27;
            }
          }

          else
          {
            v11 = *(a1 + 592);
            v12 = v110;
            if (v8 < v110)
            {
              *v8 = v11;
              *(v8 + 1) = v10;
              *(v8 + 2) = 0;
              goto LABEL_13;
            }
          }

          v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v7) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (v16 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

LABEL_161:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v17 = 24 * v13;
          *v17 = v11;
          *(v17 + 8) = v10;
          *(v17 + 16) = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v8 = (v17 + 24);
          v18 = v108;
          v7 = (v17 - (v109 - v108));
          memcpy(v7, v108, v109 - v108);
          v108 = v7;
          v109 = v8;
          v110 = 0;
          if (v18)
          {
            operator delete(v18);
          }

LABEL_27:
          v109 = v8;
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

LABEL_30:
  v19 = a1;
  (*(*a1 + 160))(v107, a1);
  if (*(a1 + 24))
  {
    v112 = 0uLL;
    v113 = 0;
    __p = 0u;
    v118 = 0u;
    v119 = 1065353216;
    v20 = v108;
    v98 = v109;
    if (v108 == v109)
    {
LABEL_155:
      v96 = v19[96];
      (*(*[v96 gglDevice] + 24))(&v116);

      _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    while (1)
    {
      v22 = *(v20 + 1);
      v21 = *(v20 + 2);
      v99 = v20;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v100 = v21;
      v23 = geo::codec::VectorTile::polygonsCount(*(*(v22 + 144) + 96), *(*(v22 + 144) + 104));
      if (v23)
      {
        break;
      }

LABEL_152:
      if (v100)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v100);
        std::__shared_weak_count::__release_shared[abi:nn200100](v100);
      }

      v20 = v99 + 24;
      if (v99 + 24 == v98)
      {
        goto LABEL_155;
      }
    }

    v24 = v23;
    v25 = 0;
    v101 = v23;
    v102 = v22;
LABEL_36:
    v26 = *(*(v22 + 144) + 96) + (v25 << 7);
    if (((*(*v19 + 19))(v19, v22, v26) & 1) != 0 || !*(v26 + 96))
    {
      goto LABEL_151;
    }

    v104 = v25;
    md::createFeatureAttributeSet(&v125, (v26 + 24));
    v27 = v125;
    v28 = v126;
    v29 = gss::FeatureAttributeSet::hash(v125, v126);
    v30 = *(&__p + 1);
    if (!*(&__p + 1))
    {
      goto LABEL_55;
    }

    v31 = v29;
    v32 = vcnt_s8(*(&__p + 8));
    v32.i16[0] = vaddlv_u8(v32);
    v33 = v32.u32[0];
    if (v32.u32[0] > 1uLL)
    {
      v34 = v29;
      if (v29 >= *(&__p + 1))
      {
        v34 = v29 % *(&__p + 1);
      }
    }

    else
    {
      v34 = (*(&__p + 1) - 1) & v29;
    }

    v35 = *(__p + 8 * v34);
    if (!v35 || (v36 = *v35) == 0)
    {
LABEL_55:
      v38 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v112 + 1) - v112) >> 5);
      if (*(&v112 + 1) < v113)
      {
        md::ElevatedStrokeGroup::ElevatedStrokeGroup(*(&v112 + 1), &v125);
      }

      if (v38 + 1 > 0x199999999999999)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v39 = 0x999999999999999ALL * ((v113 - v112) >> 5);
      if (v39 <= v38 + 1)
      {
        v39 = v38 + 1;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v113 - v112) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v40 = 0x199999999999999;
      }

      else
      {
        v40 = v39;
      }

      *&v121[2] = &v112;
      if (!v40)
      {
        *&v121[0] = 0;
        *(&v121[0] + 1) = 32 * ((*(&v112 + 1) - v112) >> 5);
        v121[1] = *(&v121[0] + 1);
        md::ElevatedStrokeGroup::ElevatedStrokeGroup(*(&v121[0] + 1), &v125);
      }

      if (v40 <= 0x199999999999999)
      {
        operator new();
      }

      goto LABEL_161;
    }

    v105 = *(&__p + 1) - 1;
    while (1)
    {
      v37 = v36[1];
      if (v37 == v31)
      {
        if (gss::FeatureAttributeSet::operator==(v36[2], v36[3], v27, v28))
        {
          v41 = (v112 + 160 * v36[6]);
          v42 = v41[8];
          v43 = 0x2E8BA2E8BA2E8BA3 * ((v41[9] - v42) >> 3);
          v106 = *(v26 + 96);
          v44 = v43 + v106;
          if (0x2E8BA2E8BA2E8BA3 * ((v41[10] - v42) >> 3) < (v43 + v106))
          {
            if (v44 < 0x2E8BA2E8BA2E8BBLL)
            {
              *&v121[2] = v41 + 8;
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolygonOverlayMeshBuilder::MeshInfo>>(v44);
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v45 = *(v26 + 40);
          v46 = v41[16];
          if (!*&v46)
          {
            goto LABEL_86;
          }

          v47 = vcnt_s8(v46);
          v47.i16[0] = vaddlv_u8(v47);
          if (v47.u32[0] > 1uLL)
          {
            v48 = *(v26 + 40);
            if (v45 >= *&v46)
            {
              v48 = v45 % *&v46;
            }
          }

          else
          {
            v48 = (*&v46 - 1) & v45;
          }

          v49 = *(v41[15] + 8 * v48);
          if (!v49 || (v50 = *v49) == 0)
          {
LABEL_86:
            operator new();
          }

          while (2)
          {
            v51 = v50[1];
            if (v51 != v45)
            {
              if (v47.u32[0] > 1uLL)
              {
                if (v51 >= *&v46)
                {
                  v51 %= *&v46;
                }
              }

              else
              {
                v51 &= *&v46 - 1;
              }

              if (v51 != v48)
              {
                goto LABEL_86;
              }

LABEL_85:
              v50 = *v50;
              if (!v50)
              {
                goto LABEL_86;
              }

              continue;
            }

            break;
          }

          if (v50[2] != v45)
          {
            goto LABEL_85;
          }

          v25 = v104;
          v50[3] = v43 | ((v106 + v43) << 32);
          if (v106)
          {
            for (i = 0; i != v106; ++i)
            {
              v115 = 0;
              v53 = geo::codec::multiSectionFeaturePoints(v26, i, &v115);
              if (geo::codec::multiSectionFeaturePrecision(v26) <= 0x10 && v115 >= 3)
              {
                *&v122 = 0;
                memset(v121, 0, sizeof(v121));
                std::vector<gm::Matrix<float,2,1>>::reserve(v121, v115);
                v54 = 0;
                v55 = 0;
                v56 = *(&v121[0] + 1);
                do
                {
                  if (v56 >= *&v121[1])
                  {
                    v57 = (v56 - *&v121[0]) >> 3;
                    if ((v57 + 1) >> 61)
                    {
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    v58 = (*&v121[1] - *&v121[0]) >> 2;
                    if (v58 <= v57 + 1)
                    {
                      v58 = v57 + 1;
                    }

                    if (*&v121[1] - *&v121[0] >= 0x7FFFFFFFFFFFFFF8uLL)
                    {
                      v59 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v59 = v58;
                    }

                    if (v59)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v59);
                    }

                    *(8 * v57) = *(&v53->__vftable + v54);
                    v56 = (8 * v57 + 8);
                    v61 = *(&v121[0] + 1);
                    v60 = *&v121[0];
                    v62 = 8 * v57 + *&v121[0] - *(&v121[0] + 1);
                    if (*(&v121[0] + 1) != *&v121[0])
                    {
                      v63 = (8 * v57 + *&v121[0] - *(&v121[0] + 1));
                      do
                      {
                        v64 = *v60++;
                        *v63++ = v64;
                      }

                      while (v60 != v61);
                      v60 = *&v121[0];
                    }

                    *&v121[0] = v62;
                    *(&v121[0] + 1) = 8 * v57 + 8;
                    *&v121[1] = 0;
                    if (v60)
                    {
                      operator delete(v60);
                    }
                  }

                  else
                  {
                    *v56++ = *(&v53->__vftable + v54);
                  }

                  *(&v121[0] + 1) = v56;
                  v65 = v115;
                  v54 = ++v55;
                }

                while (v115 > v55);
                v114 = 0;
                CharacteristicPointsForSection = geo::codec::polygonFeatureGetCharacteristicPointsForSection(v26, i, &v114);
                LOBYTE(v116) = 0;
                std::vector<BOOL>::vector(&v120, v65);
                v67 = v65;
                if (CharacteristicPointsForSection)
                {
                  if (v65)
                  {
                    v68 = 0;
                    v69 = 0;
                    v67 = 0;
                    v70 = v120;
                    while (1)
                    {
                      v71 = v68 >> 6;
                      if (v69 >= v114)
                      {
LABEL_116:
                        v74 = 1 << v68;
                        v73 = v69;
                        v75 = &v70[8 * v71];
                      }

                      else
                      {
                        v72 = CharacteristicPointsForSection + 100 * v69;
                        v73 = v69;
                        while (v68 != *(v72 + 3))
                        {
                          ++v73;
                          v72 += 100;
                          if (v114 == v73)
                          {
                            goto LABEL_116;
                          }
                        }

                        v75 = &v70[8 * v71];
                        v74 = 1 << v68;
                        if (v72[28] == 1)
                        {
                          v76 = 0;
                          *v75 |= v74;
                          goto LABEL_118;
                        }
                      }

                      *v75 &= ~v74;
                      v76 = 1;
LABEL_118:
                      v67 += v76;
                      ++v68;
                      v69 = v73;
                      if (v68 == v65)
                      {
                        goto LABEL_123;
                      }
                    }
                  }

                  v67 = 0;
                }

LABEL_123:
                std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(&v121[1] + 1, v67);
                if (v65)
                {
                  v77 = 0;
                  do
                  {
                    v78 = v77 + 1;
                    if (((*(v120 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
                    {
                      v79 = v78 % v65;
                      v80 = *&v121[2];
                      if (*&v121[2] >= *(&v121[2] + 1))
                      {
                        v82 = *(&v121[1] + 1);
                        v83 = *&v121[2] - *(&v121[1] + 1);
                        v84 = (*&v121[2] - *(&v121[1] + 1)) >> 4;
                        v85 = v84 + 1;
                        if ((v84 + 1) >> 60)
                        {
                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v86 = *(&v121[2] + 1) - *(&v121[1] + 1);
                        if ((*(&v121[2] + 1) - *(&v121[1] + 1)) >> 3 > v85)
                        {
                          v85 = v86 >> 3;
                        }

                        if (v86 >= 0x7FFFFFFFFFFFFFF0)
                        {
                          v87 = 0xFFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v87 = v85;
                        }

                        if (v87)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v87);
                        }

                        v88 = (*&v121[2] - *(&v121[1] + 1)) >> 4;
                        v89 = (16 * v84);
                        *v89 = v77;
                        v89[1] = v79;
                        v81 = 16 * v84 + 16;
                        v90 = (16 * v84 - 16 * v88);
                        memcpy(v90, v82, v83);
                        v91 = *(&v121[1] + 1);
                        *(&v121[1] + 1) = v90;
                        v121[2] = v81;
                        if (v91)
                        {
                          operator delete(v91);
                        }
                      }

                      else
                      {
                        **&v121[2] = v77;
                        *(v80 + 8) = v79;
                        v81 = v80 + 16;
                      }

                      *&v121[2] = v81;
                    }

                    v77 = v78;
                  }

                  while (v78 < v65);
                }

                v92 = v41[9];
                if (v92 >= v41[10])
                {
                  v95 = std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__emplace_back_slow_path<md::PolygonOverlayMeshBuilder::MeshInfo>(v41 + 8, v121);
                }

                else
                {
                  *(v92 + 16) = 0;
                  *(v92 + 24) = 0;
                  *v92 = 0;
                  *(v92 + 8) = 0;
                  *v92 = v121[0];
                  *(v92 + 16) = *&v121[1];
                  memset(v121, 0, 24);
                  *(v92 + 32) = 0;
                  *(v92 + 40) = 0;
                  *(v92 + 24) = *(&v121[1] + 8);
                  *(v92 + 40) = *(&v121[2] + 1);
                  memset(&v121[1] + 8, 0, 24);
                  v93 = v122;
                  v94 = v123;
                  *(v92 + 80) = v124;
                  *(v92 + 48) = v93;
                  *(v92 + 64) = v94;
                  v95 = v92 + 88;
                }

                v25 = v104;
                v41[9] = v95;
                if (v120)
                {
                  operator delete(v120);
                }

                if (*(&v121[1] + 1))
                {
                  *&v121[2] = *(&v121[1] + 1);
                  operator delete(*(&v121[1] + 1));
                }

                if (*&v121[0])
                {
                  *(&v121[0] + 1) = *&v121[0];
                  operator delete(*&v121[0]);
                }
              }
            }
          }

          std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v125);
          v22 = v102;
          v19 = a1;
          v24 = v101;
LABEL_151:
          if (++v25 == v24)
          {
            goto LABEL_152;
          }

          goto LABEL_36;
        }
      }

      else
      {
        if (v33 > 1)
        {
          if (v37 >= v30)
          {
            v37 %= v30;
          }
        }

        else
        {
          v37 &= v105;
        }

        if (v37 != v34)
        {
          goto LABEL_55;
        }
      }

      v36 = *v36;
      if (!v36)
      {
        goto LABEL_55;
      }
    }
  }

  *a3 = 0u;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v107);
  *&v121[0] = &v108;
  std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](v121);
  if (v111[0])
  {
    operator delete(v111[0]);
  }
}

void sub_1B2AE55E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  std::vector<md::ElevatedStrokeGroup>::__destroy_vector::operator()[abi:nn200100](&a45);
  shared_weak_owners = v52[31].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v52[32].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  md::MapTileData::~MapTileData(v53);
  std::__shared_weak_count::~__shared_weak_count(v52);
  operator delete(v56);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  a45 = &a37;
  std::vector<md::ElevatedStrokeGroup>::__destroy_vector::operator()[abi:nn200100](&a45);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a26);
  a45 = &a31;
  std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](&a45);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<gss::FeatureAttributeSet,unsigned long>,std::__unordered_map_hasher<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,unsigned long>,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,true>,std::__unordered_map_equal<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,unsigned long>,std::equal_to<gss::FeatureAttributeSet>,std::hash<gss::FeatureAttributeSet>,true>,std::allocator<std::__hash_value_type<gss::FeatureAttributeSet,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<md::ElevatedStrokeGroup>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        md::ElevatedStrokeGroup::~ElevatedStrokeGroup((v4 - 160));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::InjectedFeaturesLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(v5, 0, sizeof(v5));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v5);
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v4, (a1 + 592));
  operator new();
}

void sub_1B2AE5B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  if (a35 != -1)
  {
    (off_1F29EEE98[a35])(v36 - 65, &a23);
  }

  a35 = -1;
  if (a13 != a15)
  {
    free(a13);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100]((v36 - 120));
  v38 = *(v36 - 104);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  v39 = *(v36 - 96);
  if (v39)
  {
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void std::atomic_load[abi:nn200100]<md::RegistryManager>(void *a1, void *a2)
{
  sp_mut = std::__get_sp_mut(a2);
  std::__sp_mut::lock(sp_mut);
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void md::DaVinciGroundTileData::DaVinciGroundTileData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v81 = *MEMORY[0x1E69E9840];
  v15 = a5;
  v16 = *a4;
  if (*a4)
  {
    v17 = *(v16 + 152);
    *v64 = *(v16 + 144);
    *&v64[8] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v17 = 0;
    *v64 = 0uLL;
  }

  md::MapTileData::MapTileData(a1, a2, a3, v64, 1);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  *a1 = &unk_1F2A3A4B8;
  *(a1 + 640) = &unk_1F2A3A500;
  *(a1 + 1136) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = a1 + 1136;
  *(a1 + 1160) = 0u;
  *(a1 + 1152) = a1 + 1160;
  *(a1 + 1188) = xmmword_1B33AFF10;
  *(a1 + 1204) = 0x80000000800000;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = a8;
  *(a1 + 1336) = *a7;
  v18 = a7[1];
  *(a1 + 1344) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1384) = 0;
  *(a1 + 1352) = 0uLL;
  *(a1 + 1368) = 0uLL;
  *(a1 + 1392) = a9;
  v19 = *a4;
  if (*a4)
  {
    v63 = v15;
    v21 = *(v19 + 144);
    v20 = *(v19 + 152);
    v77[0] = v21;
    v77[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    v22 = *(v21 + 2760);
    if (*(v21 + 2760))
    {
      v23 = *(v21 + 2784);
      do
      {
        std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1 + 1128, *v23++);
        --v22;
      }

      while (v22);
    }

    v24 = md::DaVinciGroundTileData::_buildingCount(a1, v77);
    v25 = geo::codec::VectorTile::key(v21);
    v26 = -1 << (*(a1 + 169) - (*(v25 + 1) & 0x3F));
    v27 = *(v21 + 2336);
    v28 = geo::codec::VectorTile::daVinciSubTileBuildingIndices(v21, *(a1 + 176) & ~v26, *(a1 + 172) & ~v26, (*(a1 + 169) - (*(v25 + 1) & 0x3F)));
    v29 = v24;
    if (v24)
    {
      v30 = v28;
      v31 = 0;
      v32 = 2 * v29;
      do
      {
        *v64 = *(v27 + 40 * (*v30)->u16[v31 / 2] + 16);
        std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1 + 1128, *v64);
        v31 += 2;
      }

      while (v32 != v31);
    }

    v33 = 1 << *(a1 + 169);
    v34 = ((v33 + ~*(a1 + 172)) + 0.5) / v33;
    v35 = exp(v34 * 6.28318531 + -3.14159265);
    v36 = atan(v35);
    v37 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v36 * 114.591559 + -90.0) / (1.0 / v33);
    __powidf2();
    *&v38 = v38 * 0.0000000249532021;
    *(a1 + 1176) = v37;
    *(a1 + 1180) = v37;
    *(a1 + 1184) = LODWORD(v38);
    v76 = v37;
    md::VirtualSubTileHelper::computeScaleAndOffset(v72, a1 + 168, *(v25 + 1), *(v25 + 5), &v76);
    v64[0] = 0;
    v66 = 0;
    if (v75)
    {
      *&v64[4] = 0uLL;
      *&v64[24] = 0;
      *v65 = 0;
      *&v65[20] = 0;
      *&v65[12] = 0;
      *v64 = 1065353216;
      *&v64[20] = 1065353216;
      *&v65[8] = 1065353216;
      *&v65[28] = 1065353216;
      v66 = 1;
      memset(v79, 0, 28);
      *&v78[4] = 0u;
      *v78 = 1065353216;
      v79[0] = 1065353216;
      v79[5] = 1065353216;
      *&v79[7] = v73;
      v80 = 1065353216;
      v79[9] = v74;
      gm::operator*<float,4,4,4>(&v68, v64, v78);
      *v64 = v68;
      *&v64[16] = v69;
      *v65 = v70;
      *&v65[16] = v71;
      memset(v79, 0, sizeof(v79));
      *&v78[4] = 0u;
      v80 = 1065353216;
      *v78 = v72[0];
      v79[0] = v72[1];
      v79[5] = v72[2];
      gm::operator*<float,4,4,4>(&v68, v64, v78);
      *v64 = v68;
      *&v64[16] = v69;
      *v65 = v70;
      *&v65[16] = v71;
    }

    v39 = *(v21 + 2216);
    v40 = geo::codec::VectorTile::daVinciDecalCount(v39, *(v21 + 2224));
    if (v40)
    {
      v41 = v40;
      do
      {
        v42 = *v39;
        v39 = (v39 + 72);
        *v78 = v42;
        std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1 + 1128, v42);
        --v41;
      }

      while (v41);
    }

    md::DaVinciGroundTileData::_buildAssetRequests(a1, *(v21 + 2192), *(v21 + 2768), *(v21 + 2184), v64);
    md::DaVinciGroundTileData::_buildAssetRequests(a1, *(v21 + 2208), *(v21 + 2776), *(v21 + 2200), v64);
    v43 = +[VKDebugSettings sharedSettings];
    v44 = [v43 daVinciRoundBuildings];

    v45 = *(a1 + 169);
    v46 = v76;
    v47 = +[VKDebugSettings sharedSettings];
    [v47 daVinciBuildingRoundingRadius];
    v49 = v48;

    if (v45 >= 0x10 && (v44 & 1) != 0)
    {
      v50 = v49 * v46;
    }

    else
    {
      v50 = 0.0;
    }

    v51 = flt_1B33AF8B8[v45 == 16];
    if (v45 == 17)
    {
      v51 = 0.7854;
    }

    *&v68 = __PAIR64__(LODWORD(v51), LODWORD(v50));
    *(&v68 + 1) = 0x40060A923F060A92;
    LODWORD(v69) = 1056964608;
    v52 = *(v21 + 2060);
    v53 = md::DaVinciGroundTileData::_buildingCount(a1, v77);
    v54 = geo::codec::VectorTile::daVinciDecalCount(*(v21 + 2216), *(v21 + 2224));
    v55 = (v52 + v53 + v54);
    std::vector<md::Mesh>::reserve((a1 + 1032), v55);
    v67[1] = (v54 << 32) | (v55 << 48) | (v52 << 16) | v53;
    (*(*[v63 gglDevice] + 24))(v67);
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    *&v79[1] = 0;
    operator new();
  }

  v56 = 1.0;
  v57 = 0.0;
  if (*(a1 + 1200) >= *(a1 + 1188) && *(a1 + 1204) >= *(a1 + 1192))
  {
    v58 = *(a1 + 1208);
    v59 = *(a1 + 1196);
    if (v58 >= v59)
    {
      v60 = *(a1 + 1184);
      v57 = (v59 / v60);
      v56 = (v58 / v60);
    }
  }

  *v64 = v57;
  *v78 = v56;
  gdc::Tiled::setZBoundsInMeters((a1 + 168), v64, v78);
  v61 = v57;
  v62 = v56;
  gdc::Tiled::Tiled(v64, (a1 + 168), v61, v62);
  gdc::Tiled::Tiled(v78, v64);
  gdc::Context::setContext<md::components::SharedTransformData,md::components::SharedTransformData>();
}

void sub_1B2AE6608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = v13;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,void *>>>::operator()[abi:nn200100](1, v15);
  a13 = v14 + 1368;
  std::vector<std::pair<md::ServerDrapedMesh,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::__destroy_vector::operator()[abi:nn200100](&a13);
  v17 = *(v14 + 1344);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  v18 = *(v14 + 1320);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = (v14 + 1296);
  v20 = -96;
  while (1)
  {
    v21 = *(v19 - 1);
    if (v21)
    {
      *v19 = v21;
      operator delete(v21);
    }

    v19 -= 3;
    v20 += 24;
    if (!v20)
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v14 + 1160));
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v14 + 1136));
      a13 = v14 + 1104;
      std::vector<std::unordered_map<unsigned short,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&a13);
      a13 = v14 + 1080;
      std::vector<md::DaVinciGroundTileData::RibbonAsset>::__destroy_vector::operator()[abi:nn200100](&a13);
      a13 = v14 + 1056;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
      a13 = a12;
      std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&a13);
      a13 = v14 + 1008;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
      a13 = v14 + 984;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
      a13 = v14 + 960;
      std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
      v22 = *(v14 + 936);
      if (v22)
      {
        *(v14 + 944) = v22;
        operator delete(v22);
      }

      v23 = 0;
      while (1)
      {
        v24 = *(v14 + 928 + v23);
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v24);
        }

        v23 -= 16;
        if (v23 == -48)
        {
          v25 = *(v14 + 880);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v25);
          }

          v26 = 0;
          while (1)
          {
            v27 = *(v14 + 864 + v26);
            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v27);
            }

            v26 -= 16;
            if (v26 == -48)
            {
              v28 = 0;
              while (1)
              {
                v29 = *(v14 + 816 + v28);
                if (v29)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v29);
                }

                v28 -= 16;
                if (v28 == -48)
                {
                  v30 = 0;
                  while (1)
                  {
                    v31 = *(v14 + 768 + v30);
                    if (v31)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
                    }

                    v30 -= 16;
                    if (v30 == -48)
                    {
                      md::MapTileData::~MapTileData(v14);

                      _Unwind_Resume(a1);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

gdc::Tiled *gdc::Tiled::Tiled(gdc::Tiled *this, const geo::QuadTile *a2, float a3, float a4)
{
  *(this + 24) = 0;
  v7 = *(a2 + 1);
  *(this + 1) = v7;
  v8 = *(a2 + 4);
  *(this + 4) = v8;
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 24) = *(a2 + 24);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 10) = 0x3FF0000000000000;
  *(this + 88) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(this + 104) = xmmword_1B33B0520;
  *(this + 120) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(this + 55) = 0;
  *(this + 56) = 0;
  *&v8 = (((1 << v7) + ~v8) + 0.5) / (1 << v7);
  v9 = exp(*&v8 * 6.28318531 + -3.14159265);
  v10 = atan(v9);
  v11 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v10 * 114.591559 + -90.0) / (1.0 / (1 << v7));
  __powidf2();
  *&v12 = v12 * 0.0000000249532021;
  *(this + 114) = v11;
  *(this + 115) = v11;
  *(this + 116) = LODWORD(v12);
  v14 = a4;
  v15 = a3;
  gdc::Tiled::setZBoundsInMeters(this, &v15, &v14);
  return this;
}

{
  return gdc::Tiled::Tiled(this, a2, 0.0, 0.0);
}

uint64_t gdc::Tiled::Tiled(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 4) = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  memcpy((a1 + 136), (a2 + 136), 0x130uLL);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  v8 = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 456) = v8;
  return a1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJN3gdc18LayerDataKeyIdPairEN2md19NonTiledRegistryKeyEEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISC_LNS0_6_TraitE1EEEEEvRSD_OT_EUlSM_E_JRKNS0_6__baseILSG_1EJS9_SB_EEEEEEDcSL_DpT0_(_DWORD **a1, _DWORD *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return gdc::LayerDataKey::LayerDataKey((v2 + 2), (a2 + 2));
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN3gdc18LayerDataKeyIdPairEN2md19NonTiledRegistryKeyEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS9_SB_EEEEEEDcSF_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 != *(a2 + 32))
  {
    free(v2);
  }
}

uint64_t std::operator<[abi:nn200100]<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = *(a1 + 96);
  if (v5 == -1 || v5 < v4)
  {
    return 1;
  }

  if (v5 > v4)
  {
    return 0;
  }

  v8[1] = v2;
  v8[2] = v3;
  v8[0] = &v7;
  return (off_1F2A026F0[v5])(v8, a1, a2);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<0ul,0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<std::__convert_to_BOOL<std::less<void>>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 == *a3)
  {
    return gdc::LayerDataKey::operator<((a2 + 8), (a3 + 8));
  }

  else
  {
    return *a2 < *a3;
  }
}

void md::DaVinciCenterLineRoadsLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v35[29] = *MEMORY[0x1E69E9840];
  __src = 0;
  v33 = 0;
  v34 = 0;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    while (*(a1 + 592) != *v7)
    {
      v7 += 24;
      if (v7 == v6)
      {
        goto LABEL_21;
      }
    }

    if (v7 != v6)
    {
      std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(&__src, *(v7 + 4));
      for (i = *(v7 + 3); i; i = *i)
      {
        v9 = *(i + 7);
        if (*(&v9 + 1))
        {
          atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v10 = v33;
        if (v33 >= v34)
        {
          v12 = __src;
          v13 = v33 - __src;
          v14 = (v33 - __src) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v16 = v34 - __src;
          if ((v34 - __src) >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          v35[4] = &__src;
          if (v17)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v17);
          }

          v18 = (16 * v14);
          v19 = &v18[-((v33 - __src) >> 4)];
          *v18 = v9;
          v11 = (v18 + 1);
          memcpy(v19, v12, v13);
          v20 = __src;
          v21 = v34;
          __src = v19;
          v33 = v11;
          v34 = 0;
          v35[2] = v20;
          v35[3] = v21;
          v35[1] = v20;
          v35[0] = v20;
          std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(v35);
        }

        else
        {
          *v33 = v9;
          v11 = v10 + 16;
        }

        v33 = v11;
      }
    }
  }

LABEL_21:
  memset(v31, 0, sizeof(v31));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v31);
  if (__src == v33)
  {
    v22 = *(a2 + 16);
    v26[0] = -1;
    v26[1] = gdc::ResourceKey::getInt32(v22, 0);
    Int32 = gdc::ResourceKey::getInt32(v22, 1u);
    v28 = gdc::ResourceKey::getInt32(v22, 2u);
    v29 = 0;
    v30 = 1;
  }

  else
  {
    md::GEOVectorTileResource::QuadTileFromResourceKey(v26, *(*__src + 8));
  }

  v23 = *(a1 + 832);
  if (v23)
  {
    md::ElevationRequestUpdater::getDsmResource(v25, v23, a3);
  }

  else
  {
    v25[0] = 0;
    v25[1] = 0;
  }

  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v24, (a1 + 760));
  atomic_load_explicit((a1 + 824), memory_order_acquire);
  operator new();
}

void sub_1B2AE8780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, md::MapTileData *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, char a50)
{
  a43 = &a50;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a43);
  _Unwind_Resume(a1);
}

void *std::__function::__func<md::DaVinciCenterLineRoadsTileData::DaVinciCenterLineRoadsTileData(md::MapDataType,gdc::LayerDataRequestKey const&,std::vector<gdc::Resource::LoadMetadata> &&,std::vector<std::shared_ptr<md::GEOVectorTileResource>> const&,BOOL,BOOL,std::vector<gdc::Resource::LoadMetadata> &&<gss::StylesheetManager<std::vector<std::shared_ptr<md::GEOVectorTileResource>> const&::PropertyID>>,VKSharedResources *,std::function<BOOL ()(std::shared_ptr const&,GeoCodecsRoadFeature const&,md::MapDataType)>,BOOL,std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>)::$_0,std::allocator<std::vector<gdc::Resource::LoadMetadata> &&<md::FlyoverDsmResource>>,void ()(ggl::ResourceAccessor *)>::operator()(void *result)
{
  if (*(result[2] + 24))
  {
    operator new();
  }

  if (*(result[4] + 24))
  {
    operator new();
  }

  if (*(result[5] + 24))
  {
    operator new();
  }

  if (*(result[1] + 24))
  {
    operator new();
  }

  if (*(result[3] + 24))
  {
    operator new();
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<GeoCodecsRoadFeature const*>>,std::__unordered_map_hasher<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,std::vector<GeoCodecsRoadFeature const*>>,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,true>,std::__unordered_map_equal<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,std::vector<GeoCodecsRoadFeature const*>>,std::equal_to<gss::FeatureAttributeSet>,std::hash<gss::FeatureAttributeSet>,true>,std::allocator<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<GeoCodecsRoadFeature const*>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<gss::FeatureAttributeSet const,std::vector<GeoCodecsRoadFeature const*>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PatternedBatchKey>,std::equal_to<md::PatternedBatchKey>,true>,std::__unordered_map_equal<md::PatternedBatchKey,std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PatternedBatchKey>,std::hash<md::PatternedBatchKey>,true>,std::allocator<std::__hash_value_type<md::PatternedBatchKey,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::PatternedBatchKey const,std::vector<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PatternedRibbon,mdm::TypeDeleter<md::PatternedRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::hash<md::RoadBatchKey>,std::equal_to<md::RoadBatchKey>,true>,std::__unordered_map_equal<md::RoadBatchKey,std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::RoadBatchKey>,std::hash<md::RoadBatchKey>,true>,std::allocator<std::__hash_value_type<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<md::RoadBatchKey const,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderQueueToSubmit>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderQueueToSubmit>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[215];
}

uint64_t ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderQueueToSubmit,64ul>>::signal_mixin(uint64_t a1)
{
  *a1 = &unk_1F2A60B38;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::reserve((a1 + 8));
  std::vector<ecs2::Entity>::reserve((a1 + 32));
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = &unk_1F2A1DA10;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  return a1;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md3erq19RenderQueueToSubmitEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1DA50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md3erq19RenderQueueToSubmitEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1DA50;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderTargetToSubmit>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderTargetToSubmit>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[214];
}

uint64_t ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::RenderTargetToSubmit,64ul>>::signal_mixin(uint64_t a1)
{
  *a1 = &unk_1F2A60B38;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::reserve((a1 + 8));
  std::vector<ecs2::Entity>::reserve((a1 + 32));
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = &unk_1F2A1DAE0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  return a1;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md3erq20RenderTargetToSubmitEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1DB20;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md3erq20RenderTargetToSubmitEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1DB20;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::erq::GPUWorkCallbacks,64ul>>::signal_mixin(uint64_t a1)
{
  *a1 = &unk_1F2A60B38;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 8) = 0u;
  std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::reserve((a1 + 8));
  std::vector<ecs2::Entity>::reserve((a1 + 32));
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = &unk_1F2A1DBB0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::GPUWorkCallbacks>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::GPUWorkCallbacks>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[217];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md3erq16GPUWorkCallbacksEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1DBF0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md3erq16GPUWorkCallbacksEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1DBF0;
  a2[1] = v2;
  return result;
}

uint64_t *std::vector<unsigned long>::resize(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = (v3 - *result) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return result;
    }

    v11 = v4 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = result[2];
    if (v6 > (v7 - v3) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 2;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0;
    v13 = *a3;
    v14 = (v6 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = vdupq_n_s64(v14);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_1B33B0560)));
      if (v16.i8[0])
      {
        *(v3 + 8 * v12) = v13;
      }

      if (v16.i8[4])
      {
        *(v3 + 8 * v12 + 8) = v13;
      }

      v12 += 2;
    }

    while (v14 - ((v6 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    v11 = v3 + 8 * v6;
  }

  result[1] = v11;
  return result;
}

os_log_t __GEOGetGeoGLPerformanceDetailLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit.GeoGL", "PerformanceDetail");
  GEOGetGeoGLPerformanceDetailLog_log = result;
  return result;
}

void gss::FeatureAttributeSet::setByReplacingAttributes(uint64_t a1, uint64_t **a2, unsigned int *a3, unsigned int *a4)
{
  v5 = a3;
  v61[1] = *MEMORY[0x1E69E9840];
  if (a3 == a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((a4 - a3 - 8) >> 3) + 1;
  }

  v10 = *a2;
  v9 = a2[1];
  v11 = v9 - *a2;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v12 = std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::reserve(&v58, v8 + (v11 >> 3));
  v51 = a1;
  v14 = *a2;
  v13 = a2[1];
  v15 = v13 - *a2;
  if (v15 >> 3 >= 1)
  {
    v16 = v59;
    if ((v60 - v59) >= v15)
    {
      while (v14 != v13)
      {
        v22 = *v14++;
        *v16 = v22;
        v16 = (v16 + 8);
      }

      v59 = v16;
    }

    else
    {
      v17 = v59 - v58;
      v18 = (v15 >> 3) + ((v59 - v58) >> 3);
      if (v18 >> 61)
      {
        std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
      }

      if ((v60 - v58) >> 2 > v18)
      {
        v18 = (v60 - v58) >> 2;
      }

      if (v60 - v58 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      v57 = v61;
      v52 = v11;
      if (v19)
      {
        v20 = gss::zone_mallocator::instance(v12);
        v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v20, v19);
      }

      else
      {
        v21 = 0;
      }

      v23 = &v21[8 * (v17 >> 3)];
      v24 = &v23[v15];
      v25 = v23;
      do
      {
        v26 = *v14++;
        *v25 = v26;
        v25 += 8;
        v15 -= 8;
      }

      while (v15);
      v27 = &v21[8 * v19];
      memcpy(v24, v16, v59 - v16);
      v28 = &v24[v59 - v16];
      v59 = v16;
      v29 = v16 - v58;
      v30 = &v23[-(v16 - v58)];
      memcpy(v30, v58, v29);
      v31 = v58;
      v32 = v60;
      v58 = v30;
      v59 = v28;
      v60 = v27;
      v55 = v31;
      v56 = v32;
      v53 = v31;
      v54 = v31;
      v12 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v53);
      v11 = v52;
    }
  }

  if (v5 != a4)
  {
    if ((v11 >> 3) <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = v11 >> 3;
    }

    do
    {
      v34 = *v5;
      if (v9 == v10)
      {
LABEL_29:
        v38 = *(v5 + 2);
        v39 = v59;
        if (v59 >= v60)
        {
          v41 = (v59 - v58) >> 3;
          if ((v41 + 1) >> 61)
          {
            std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
          }

          v42 = (v60 - v58) >> 2;
          if (v42 <= v41 + 1)
          {
            v42 = v41 + 1;
          }

          if (v60 - v58 >= 0x7FFFFFFFFFFFFFF8)
          {
            v43 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v42;
          }

          v57 = v61;
          if (v43)
          {
            v44 = gss::zone_mallocator::instance(v12);
            v45 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v44, v43);
          }

          else
          {
            v45 = 0;
          }

          v47 = &v45[8 * v43];
          v46 = &v45[8 * v41];
          *v46 = v34 | (v38 << 32);
          v40 = (v46 + 8);
          v48 = &v46[-(v59 - v58)];
          memcpy(v48, v58, v59 - v58);
          v49 = v58;
          v50 = v60;
          v58 = v48;
          v59 = v40;
          v60 = v47;
          v55 = v49;
          v56 = v50;
          v53 = v49;
          v54 = v49;
          v12 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v53);
        }

        else
        {
          *v59 = v34 | (v38 << 32);
          v40 = (v39 + 8);
        }

        v59 = v40;
      }

      else
      {
        v35 = 0;
        v36 = v58;
        while (1)
        {
          v37 = *v36;
          v36 = (v36 + 8);
          if (v37 == v34)
          {
            break;
          }

          if (v33 == ++v35)
          {
            goto LABEL_29;
          }
        }

        *(v58 + 4 * v35 + 2) = *(v5 + 2);
      }

      v5 += 2;
    }

    while (v5 != a4);
  }

  gss::FeatureAttributeSet::FeatureAttributeSet(v51, &v58);
  if (v58)
  {
    v59 = v58;
    std::allocator_traits<geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::deallocate[abi:ne200100](v58);
  }
}

void sub_1B2AE9BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, gss::zone_mallocator *a16, uint64_t a17)
{
  if (a16)
  {
    std::allocator_traits<geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::deallocate[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::GEOVectorTileResource::QuadTileFromResourceKey(md::GEOVectorTileResource *this, const gdc::ResourceKey *a2)
{
  Int32 = gdc::ResourceKey::getInt32(a2, 2u);
  v5 = gdc::ResourceKey::getInt32(a2, 1u);
  v6 = gdc::ResourceKey::getInt32(a2, 0);
  result = gdc::ResourceKey::getInt32(a2, 3u);
  *this = result;
  *(this + 1) = Int32;
  *(this + 1) = v5;
  *(this + 2) = v6;
  *(this + 2) = 0;
  *(this + 24) = 1;
  return result;
}

void std::__destroy_at[abi:nn200100]<std::pair<md::RoadBatchKey const,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<GeoCodecsRoadFeature const*>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<GeoCodecsRoadFeature const*>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gss::FeatureAttributeSet const,std::vector<GeoCodecsRoadFeature const*>>,0>((v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,NSStringMapComparison,true>,geo::allocator_adapter<std::__value_type<NSString * {__strong},std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>>,mdm::zone_mallocator>>::find<NSString * {__strong}>(uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = NSStringMapComparison::operator()(*(v3 + 32), *a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || NSStringMapComparison::operator()(*a2, *(v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::__delete_node[abi:nn200100](void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,void *>>(v3, a1);
}

void gdc::ViewDataAccess::screenPointForCoordinate(double *a1, uint64_t a2, uint64_t *a3)
{
  if (a1[47] * a1[46] != 0.0)
  {
    if (*a1 - 1 >= 3)
    {
      if (!*a1)
      {
        v19 = *(a2 + 8);
        v11 = tan(*a2 * 0.5 + 0.785398163);
        v12 = log(v11);
        v13.f64[0] = v19.f64[0];
        v13.f64[1] = v12;
        __asm { FMOV            V2.2D, #0.5 }

        v21 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v13);
        v22 = vmuld_lane_f64(0.0000000249532021, v19, 1);
      }
    }

    else
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      v7 = __sincos_stret(*a2);
      v8 = 6378137.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0);
      v9 = (v8 + v6) * v7.__cosval;
      v10 = __sincos_stret(v5);
      v21.f64[0] = v9 * v10.__cosval;
      v21.f64[1] = v9 * v10.__sinval;
      v22 = (v6 + v8 * 0.99330562) * v7.__sinval;
    }

    gdc::ViewDataAccess::worldViewProjectionMatrix(v20, a1, a3);
    gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v20, &v21);
  }
}

double gdc::ViewDataAccess::worldViewProjectionMatrix(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 376) * *(a2 + 368) == 0.0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = 0x3FF0000000000000;
    *(a1 + 40) = 0x3FF0000000000000;
    *(a1 + 80) = 0x3FF0000000000000;
    *(a1 + 120) = 0x3FF0000000000000;
    return result;
  }

  v24 = *a3;
  v5 = *(a3 + 3);
  v25 = *(a3 + 1);
  v26 = v5;
  v27 = *(a3 + 5);
  v29 = 0;
  v28 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v33 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v34 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v35 = v33;
  v36 = v34;
  v37 = v33;
  v38 = v34;
  v39 = v33;
  v40 = v34;
  v41 = v33;
  v42 = v34;
  v43 = v33;
  v44 = v34;
  v45 = 1;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v6 = *(a2 + 384);
  v50 = *(a2 + 368);
  v51 = v6;
  v7 = *(a2 + 416);
  v52 = *(a2 + 400);
  v53 = v7;
  v54 = *(a2 + 432);
  v55 = *(a2 + 448);
  v56 = *(a2 + 456);
  v57 = *(a2 + 464);
  *&v7 = *(a2 + 488);
  v58 = *(a2 + 480);
  v59 = v7;
  v23[0] = *a2;
  v8 = v23[0];
  gdc::Camera::Camera(v14);
  if ((v8 - 1) < 2)
  {
    gdc::CameraView::geocentricCameraView(v13, v23);
    goto LABEL_9;
  }

  if (v8 == 3)
  {
    gdc::CameraView::ecefCameraView(v13, v23);
    goto LABEL_9;
  }

  if (!v8)
  {
    gdc::CameraView::mercatorCameraView(v13, v23);
LABEL_9:
    gdc::CameraView::operator=(v14, v13);
  }

  v9 = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v9;
  v10 = v22;
  *(a1 + 96) = v21;
  *(a1 + 112) = v10;
  v11 = v16;
  *a1 = v15;
  *(a1 + 16) = v11;
  result = *&v17;
  v12 = v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = v12;
  return result;
}

void md::LabelFeature::populateFeatureInfo(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  if (!*(a2 + 16))
  {
    std::mutex::lock((a1 + 8));
    v4 = *(a1 + 152);
    if (v4)
    {
      (*(*v4 + 16))(v4, v2);
    }

    std::mutex::unlock((a1 + 8));
  }
}

void sub_1B2AEA4C8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v17 = result[1];
    v18 = v17 - v9;
    if (a4 <= (v17 - v9) >> 3)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v16 = &v9[v20];
    }

    else
    {
      v19 = &__src[v18];
      if (v17 != v9)
      {
        result = memmove(*result, __src, v18);
        v17 = v7[1];
      }

      if (a3 != v19)
      {
        result = memmove(v17, v19, a3 - v19);
      }

      v16 = &v17[a3 - v19];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      v10 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v10, v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 61)
    {
      goto LABEL_24;
    }

    v11 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v11 = a4;
    }

    v12 = v8 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v11;
    if (v12 >> 61)
    {
LABEL_24:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v13, v12);
    v14 = result;
    *v7 = result;
    v7[1] = result;
    v7[2] = &result[v12];
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(result, __src, v15);
    }

    v16 = &v14[v15];
  }

  v7[1] = v16;
  return result;
}

void std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v2, v1);
  }
}

uint64_t md::Label::populateFeatureInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1291);
  if (v5 == 9)
  {
    *(a2 + 8) = 10;
    return (*(**(a1 + 8) + 96))(*(a1 + 8), a2);
  }

  *(a2 + 8) = v5;
  if (!a3)
  {
    *a2 = 0;
    goto LABEL_7;
  }

  v6 = (*(*a3 + 880))(a3);
  *a2 = v6;
  if (!v6)
  {
LABEL_7:
    v6 = (*(**(a1 + 8) + 160))(*(a1 + 8));
    *a2 = v6;
    if (!v6)
    {
      return (*(**(a1 + 8) + 96))(*(a1 + 8), a2);
    }
  }

  v8 = *(a2 + 40);
  v7 = *(a2 + 48);
  if (v8 >= v7)
  {
    v10 = *(a2 + 32);
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 3;
    v13 = v12 + 1;
    if ((v12 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 2 > v13)
    {
      v13 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    v25[4] = a2 + 56;
    if (v15)
    {
      v16 = mdm::zone_mallocator::instance(v6);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(v16, v15);
      v10 = *(a2 + 32);
      v11 = *(a2 + 40) - v10;
      v18 = v11 >> 3;
      v6 = *a2;
    }

    else
    {
      v17 = 0;
      v18 = v12;
    }

    v19 = &v17[8 * v12];
    v20 = &v17[8 * v15];
    v21 = &v19[-v18];
    *v19 = v6;
    v9 = v19 + 1;
    memcpy(v21, v10, v11);
    v22 = *(a2 + 32);
    *(a2 + 32) = v21;
    *(a2 + 40) = v9;
    v23 = *(a2 + 48);
    *(a2 + 48) = v20;
    v25[2] = v22;
    v25[3] = v23;
    v25[0] = v22;
    v25[1] = v22;
    std::__split_buffer<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator> &>::~__split_buffer(v25);
  }

  else
  {
    *v8 = v6;
    v9 = v8 + 8;
  }

  *(a2 + 40) = v9;
  return (*(**(a1 + 8) + 96))(*(a1 + 8), a2);
}

uint64_t md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::geoObjectWithRetainingTile(void *a1, void *a2)
{
  v4 = a1[8];
  v3 = a1[9];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1[7];
}

void md::LabelSettings_Markers::labelMarkerForSelectionAtPoint(md::LabelSettings_Markers *this, CGPoint a2, uint64_t a3, uint64_t a4)
{
  y = a2.y;
  x = a2.x;
  std::recursive_mutex::lock((a3 + 24));
  v8 = *(a3 + 476);
  v9 = x * v8;
  *&v8 = *(a3 + 1500) - y * v8;
  *v10 = v9;
  v10[1] = LODWORD(v8);
  (*(**(a3 + 240) + 168))(*(a3 + 240), v10, a4);
  std::recursive_mutex::unlock((a3 + 24));
}

void md::CompositeLabeler::labelMarkerForSelectionAtPixel(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
LABEL_6:
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    while (1)
    {
      (*(**v5 + 168))(*v5, a2, a3);
      if (*a4)
      {
        break;
      }

      v9 = a4[1];
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (++v5 == v6)
      {
        goto LABEL_6;
      }
    }
  }
}

void *md::LabelPart::hitPartAtPixel(uint64_t a1, float *a2, int a3, float32x2_t a4, double a5, float a6, double a7, float32x4_t a8, float32x4_t a9)
{
  if (*(a1 + 552) <= 0.0039062)
  {
    return 0;
  }

  v9 = a1;
  a4.i32[1] = LODWORD(a5);
  if (*(a1 + 472))
  {
    v10 = *(a1 + 488);
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    v12 = 0;
    *&a5 = -a6;
    v13 = vdupq_lane_s32(*&a5, 0);
    v14 = *(a1 + 496);
    v15 = *(a1 + 508);
    v16 = 3.4028e38;
    do
    {
      v17 = 0;
      v18 = 0;
      v19 = (v14 + 24 * v12);
      *a8.f32 = v19[1];
      *a9.f32 = vneg_f32(*a8.f32);
      v47.i64[0] = a9.i64[0];
      v47.i64[1] = a8.i64[0];
      v20 = &v47;
      do
      {
        a8.i32[0] = v47.i32[v18 + 2];
        a9.i32[0] = v20->i32[0];
        if (v17)
        {
          break;
        }

        v17 = 1;
        v20 = &v47.i32[1];
        v18 = 1;
      }

      while (a8.f32[0] >= a9.f32[0]);
      v21 = vdupq_lane_s32(*&vcgtq_f32(a9, a8), 0);
      a8.i64[1] = v47.i64[1];
      v22.i64[0] = vaddq_f32(v47, v13).u64[0];
      v22.i64[1] = vsubq_f32(v47, v13).i64[1];
      a9 = vbslq_s8(v21, v47, v22);
      v46 = a9;
      *a9.f32 = vsub_f32(a4, *v19);
      if (v15)
      {
        v23 = v9[41];
        v24 = vrev64_s32(vmul_lane_f32(v23, *a9.f32, 1));
        v25 = vmul_n_f32(v23, a9.f32[0]);
        v26 = vsub_f32(v24, v25);
        a9.i32[0] = vadd_f32(v24, v25).u32[0];
        a9.i32[1] = v26.i32[1];
      }

      v27 = 0;
      v28.i32[0] = v47.i32[2];
      v29 = &v46;
      v30 = 1;
      v31 = a9.f32[0];
      while (v31 >= v29->f32[0] && v31 < v46.f32[v27 + 2])
      {
        v32 = v30;
        v30 = 0;
        v31 = a9.f32[1];
        v29 = &v46.i32[1];
        v27 = 1;
        if ((v32 & 1) == 0)
        {
          v33 = (v47.f32[3] + v47.f32[1]) * 0.5;
          v34 = vabds_f32(a9.f32[1], v33);
          v28.f32[1] = v33;
          v35 = vsub_f32(*a9.f32, v28);
          v36 = vaddv_f32(vmul_f32(v35, v35));
          if (a9.f32[0] <= v47.f32[2])
          {
            v36 = v34;
          }

          v37 = vsub_f32(*a9.f32, __PAIR64__(LODWORD(v33), v47.u32[0]));
          v38 = vaddv_f32(vmul_f32(v37, v37));
          if (a9.f32[0] < v47.f32[0])
          {
            v39 = v38;
          }

          else
          {
            v39 = v36;
          }

          v16 = fminf(v16, v39);
          v11 = 1;
          break;
        }
      }

      ++v12;
    }

    while (v12 != v10);
  }

  else
  {
    if (!*(a1 + 480))
    {
      return 0;
    }

    v40 = *(a1 + 488);
    if (!v40)
    {
      return 0;
    }

    v11 = 0;
    v41 = (*(a1 + 496) + 8);
    v16 = 3.4028e38;
    do
    {
      v42 = *(v41 - 2);
      v43 = vsub_f32(v42, a4);
      if (vaddv_f32(vmul_f32(v43, v43)) < ((*v41 + a6) * (*v41 + a6)))
      {
        v44 = vsub_f32(a4, v42);
        v16 = fminf(v16, vaddv_f32(vmul_f32(v44, v44)));
        v11 = 1;
      }

      v41 += 6;
      --v40;
    }

    while (v40);
  }

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  *a2 = sqrtf(v16);
  if (a3)
  {
    if (((*(*v9 + 656))(v9) & 1) == 0)
    {
      return 0;
    }
  }

  return v9;
}

uint64_t md::CompositeLabelPart::hitPartAtPixel(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v6 = *(a1 + 576);
  v7 = *(a1 + 584);
  if (v6 == v7)
  {
    return 0;
  }

  while (1)
  {
    result = (*(**v6 + 640))(*v6, a2, a3, a4, a5, a6);
    if (result)
    {
      break;
    }

    if (++v6 == v7)
    {
      return 0;
    }
  }

  return result;
}

void md::MapNavLabeler::labelMarkerForSelectionAtPixel(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 360))(a1) & 1) == 0 && (!a1[13] || !*(a1[90] + 24)))
  {
    goto LABEL_20;
  }

  v7 = a1[81];
  v8 = a1[82];
  if (v7 == v8)
  {
    goto LABEL_20;
  }

  while (1)
  {
    geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v19, v7);
    v9 = v20;
    v10 = [v9 label];

    LODWORD(v18) = 0;
    v11 = *v10;
    if (*(*v10 + 379) == 1 && *(v11 + 377) == 1 && *(v11 + 378) == 1 && (*(v11 + 380) & 1) == 0 && (v12 = COERCE_FLOAT(atomic_load((v11 + 288))), v12 >= 1.0) && md::MapNavLabeler::isNavLabelHitAtPixel(*v10, a2, &v18))
    {
      v13 = v20;
      v3 = [v13 navFeature];

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v19 = off_1F2A59C08;

    if ((v14 & 1) == 0)
    {
      break;
    }

    v7 += 24;
    if (v7 == v8)
    {
      goto LABEL_20;
    }
  }

  if (v3)
  {
    v15 = a1[14];
    if (!v15 || (WeakRetained = objc_loadWeakRetained((v15 + 288)), WeakRetained, v3 != WeakRetained))
    {
      std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v18, *(a1[3] + 8), *(a1[3] + 16));
      operator new();
    }

    v17 = a1[15];
    *a3 = a1[14];
    a3[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_20:
    v3 = 0;
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B2AEB0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, id location, uint64_t a13, uint64_t a14)
{
  objc_storeWeak(&location, 0);
  objc_destroyWeak(&location);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

void *md::StandardLabeler::labelAtPixel(void *result, void *a2, float *a3, int a4, uint64_t *a5)
{
  *result = 0;
  result[1] = 0;
  if (a5)
  {
    *a5 = 0;
  }

  v6 = a2[13];
  v7 = a2[14];
  if (v6 == v7)
  {
    v10 = 0;
    goto LABEL_32;
  }

  v27 = result;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(a2[3] + 176);
  v12 = 3.4028e38;
  do
  {
    v13 = *v6;
    if ((*(*v6 + 1152) & 0xFD) == 1 && v9 <= *(v13 + 1294))
    {
      if (a4)
      {
        v14 = 15.0;
        if (*(v13 + 1156))
        {
          v15 = 0;
        }

        else
        {
          v26 = *(v13 + 272);
          if (!v26 || !(*(*v26 + 648))(v26))
          {
            goto LABEL_26;
          }

          v13 = *v6;
          v15 = 1;
        }
      }

      else
      {
        v15 = 0;
        v14 = 22.0;
      }

      v30 = 0.0;
      v16 = *a3;
      v17 = a3[1];
      *(v13 + 1292) = 0;
      v18 = *(v13 + 272);
      if (v18 && (v19 = (*(*v18 + 640))(v18, &v30, v15, v16, v17, v14 * v11), (v20 = v19) != 0) && ((*(v13 + 1292) = (*(*v19 + 664))(v19), v21 = *v6, v22 = *(*v6 + 1294), v23 = v30, v30 >= v12) ? (v24 = v22 > v9) : (v24 = 1), v24))
      {
        v25 = v6[1];
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        if (a5)
        {
          *a5 = v20;
        }
      }

      else
      {
        v25 = v8;
        v21 = v10;
        v22 = v9;
        v23 = v12;
      }

      v8 = v25;
      v10 = v21;
      v9 = v22;
      v12 = v23;
    }

LABEL_26:
    v6 += 2;
  }

  while (v6 != v7);
  result = v27;
  v27[1] = v8;
LABEL_32:
  *result = v10;
  return result;
}

void sub_1B2AEB368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  *a9 = v10;
  a9[1] = v9;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  _Unwind_Resume(exception_object);
}

void md::StandardLabeler::labelMarkerForSelectionAtPixel(void *a1@<X0>, float *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  md::StandardLabeler::labelAtPixel(&v14, a1, a2, a3, &v16);
  if (v14)
  {
    v6 = a1[30];
    if (v6 && !*(v6 + 224) && v14 == *(v6 + 288))
    {
      v12 = a1[31];
    }

    else
    {
      v6 = a1[32];
      if (!v6 || *(v6 + 224) || v14 != *(v6 + 288))
      {
        md::Label::populateFeatureInfo(v14, &v17, v16);
        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v13, *(a1[3] + 8), *(a1[3] + 16));
        std::allocate_shared[abi:nn200100]<md::StandardLabelMarker,std::allocator<md::StandardLabelMarker>,std::shared_ptr<md::LabelManager>,std::shared_ptr<md::Label> &,float,md::LabelFeatureInfo &,0>();
      }

      v12 = a1[33];
    }

    *a4 = v6;
    a4[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  v7 = v15;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (SHIBYTE(v28) < 0)
  {
    v8 = v26;
    v9 = mdm::zone_mallocator::instance(v7);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
  }

  if (SHIBYTE(v25) < 0)
  {
    v10 = v23;
    v11 = mdm::zone_mallocator::instance(v7);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v20);
  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19 + 1));
  }
}

void sub_1B2AEB544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  v42 = a17;
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a40 < 0)
  {
    v43 = *(v40 + 104);
    v44 = mdm::zone_mallocator::instance(v42);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v44, v43);
  }

  if (a33 < 0)
  {
    v45 = *(v40 + 72);
    v46 = mdm::zone_mallocator::instance(v42);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v46, v45);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a23);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__split_buffer<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(v5, v4);
  }

  return a1;
}

uint64_t md::StandardLabelMarker::StandardLabelMarker(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t a5, float a6)
{
  v9 = *(a5 + 8);
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = &unk_1F2A2C9C8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 225) = v9;
  *(a1 + 232) = a2;
  *(a1 + 240) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 248) = a6;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 256) = 0;
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    *(a1 + 248) = a6;
    *(a1 + 264) = 0;
    *(a1 + 272) = 0;
    *(a1 + 256) = 0;
  }

  *a1 = &unk_1F2A2C6F8;
  v10 = *a4;
  v11 = a4[1];
  *(a1 + 288) = *a4;
  *(a1 + 296) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 288);
  }

  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  atomic_fetch_add((v10 + 1385), 1u);
  *(a1 + 304) = *a5;
  if (a1 != a5)
  {
    std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<unsigned long long *,unsigned long long *>((a1 + 32), *(a5 + 32), *(a5 + 40), (*(a5 + 40) - *(a5 + 32)) >> 3);
  }

  v13 = *(a5 + 16);
  v12 = *(a5 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 320);
  *(a1 + 312) = v13;
  *(a1 + 320) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  *(a1 + 332) = *(a5 + 64);
  v15 = *(a1 + 225);
  *(a1 + 341) = v15 == 1;
  *(a1 + 336) = (v15 - 8) < 6;
  *(a1 + 337) = (v15 < 0xE) & (0x2600u >> v15);
  *(a1 + 340) = (v15 & 0xFE) == 12;
  *(a1 + 339) = (v15 & 0xFFFFFFFB) == 8;
  *(a1 + 338) = v15 == 11;
  md::StandardLabelMarker::populateFromFeature(a1, a5);
  return a1;
}

void sub_1B2AEB800(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 37);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LabelMarker::~LabelMarker(v1);
  _Unwind_Resume(a1);
}

void md::StandardLabelMarker::populateFromFeature(md::StandardLabelMarker *this, uint64_t a2)
{
  v204 = *MEMORY[0x1E69E9840];
  v5 = *(this + 225);
  if (v5 > 0xA)
  {
    if (v5 == 11)
    {
      v49 = *(this + 39);
      if (v49)
      {
        v50 = geo::codec::VectorTile::transitAccessPointForFeatureID(*(v49 + 1568), *(v49 + 1576), *(this + 38));
        if (v50)
        {
          v51 = v50;
          if (*(v50 + 72))
          {
            __dst[0] = 0;
            v201.i64[0] = 0;
            geo::codec::featureGetNativeShield(v50, 0, __dst, &v201, 0);
            if (v201.i64[0])
            {
              v52 = [VKImageSourceKey alloc];
              LODWORD(v195) = 0;
              v53 = [(VKImageSourceKey *)v52 initWithShieldText:__dst[0] locale:0 type:v201.u32[0] color:&v195];
              v197 = v53;
              v54 = [(VKImageSourceKey *)v53 shieldText];
              [(VKImageSourceKey *)v53 setText:v54];

              [(VKImageSourceKey *)v53 setDataType:5];
              v55 = *(this + 13);
              if (v55 >= *(this + 14))
              {
                v57 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 12, &v197);
              }

              else
              {
                v56 = v53;
                *v55 = &unk_1F2A381B8;
                v55[1] = v56;
                v57 = (v55 + 3);
                *(this + 13) = v55 + 3;
              }

              *(this + 13) = v57;
            }
          }

          v104 = *(v51 + 224);
          if (v104)
          {
            v105 = geo::codec::VectorTile::transitNodeForFeatureID(*(*(this + 39) + 1416), *(*(this + 39) + 1424), v104);
            if (v105)
            {
              v197 = 0;
              geo::codec::featureGetLocalizedLabel(v105, &v197, 0);
              if (v197)
              {
                if (*v197)
                {
                  v106 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v201, v197);
                  v107 = *(this + 21);
                  v108 = *(this + 22);
                  if (v107 >= v108)
                  {
                    v111 = *(this + 20);
                    v112 = (v107 - v111) >> 5;
                    v113 = v112 + 1;
                    if ((v112 + 1) >> 59)
                    {
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    v114 = v108 - v111;
                    if (v114 >> 4 > v113)
                    {
                      v113 = v114 >> 4;
                    }

                    if (v114 >= 0x7FFFFFFFFFFFFFE0)
                    {
                      v115 = 0x7FFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v115 = v113;
                    }

                    v192 = this + 184;
                    if (v115)
                    {
                      v116 = mdm::zone_mallocator::instance(v106);
                      v117 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v116, v115);
                    }

                    else
                    {
                      v117 = 0;
                    }

                    v157 = &v117[32 * v112];
                    v158 = &v117[32 * v115];
                    v159 = v201;
                    *(v157 + 2) = v202;
                    *v157 = v159;
                    v157[24] = BYTE8(v202);
                    v201 = 0uLL;
                    *&v202 = 0;
                    v160 = v157 + 32;
                    v161 = *(this + 20);
                    v162 = *(this + 21) - v161;
                    v163 = &v157[-v162];
                    memcpy(&v157[-v162], v161, v162);
                    v164 = *(this + 20);
                    *(this + 20) = v163;
                    *(this + 21) = v160;
                    v165 = *(this + 22);
                    *(this + 22) = v158;
                    v190 = v164;
                    v191 = v165;
                    __dst[0] = v164;
                    __dst[1] = v164;
                    v166 = std::__split_buffer<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator> &>::~__split_buffer(__dst);
                    v167 = SBYTE7(v202);
                    *(this + 21) = v160;
                    if (v167 < 0)
                    {
                      v168 = v201.i64[0];
                      v169 = mdm::zone_mallocator::instance(v166);
                      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v169, v168);
                    }
                  }

                  else
                  {
                    v109 = v201;
                    v107[1].i64[0] = v202;
                    *v107 = v109;
                    v107[1].i8[8] = BYTE8(v202);
                    *(this + 21) = v107 + 2;
                  }
                }
              }
            }
          }

          v170 = 0;
          if (*(v51 + 240) <= 1u)
          {
            v171 = 1;
          }

          else
          {
            v171 = *(v51 + 240);
          }

          do
          {
            if (v171)
            {
              v172 = [[VKImageSourceKey alloc] initWithIconAttributeKey:45 attributeValue:v170];
              __dst[0] = v172;
              [(VKImageSourceKey *)v172 setDataType:1];
              [(VKImageSourceKey *)v172 setDataValue:v170];
              v173 = *(this + 9);
              if (v173 >= *(this + 10))
              {
                v175 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 8, __dst);
              }

              else
              {
                v174 = v172;
                *v173 = &unk_1F2A381B8;
                v173[1] = v174;
                v175 = (v173 + 3);
                *(this + 9) = v173 + 3;
              }

              *(this + 9) = v175;
            }

            v170 = (v170 + 1);
            v176 = v171;
            v171 >>= 1;
          }

          while (v176 > 1);
        }
      }

      return;
    }

    if (v5 != 12)
    {
      if (v5 == 13)
      {
        v37 = *(a2 + 95);
        if ((v37 & 0x80u) != 0)
        {
          v37 = *(a2 + 80);
        }

        if (v37)
        {
          v39 = *(this + 21);
          v38 = *(this + 22);
          v40 = (this + 160);
          v41 = (a2 + 72);
          if (v39 >= v38)
          {
            v42 = std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__emplace_back_slow_path<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&>(v40, v41);
          }

          else
          {
            std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__construct_one_at_end[abi:nn200100]<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&>(v40, v41);
            v42 = v39 + 32;
          }

          *(this + 21) = v42;
        }

        v83 = *(a2 + 127);
        if ((v83 & 0x80u) != 0)
        {
          v83 = *(a2 + 112);
        }

        if (v83)
        {
          v84 = *(this + 25);
          v85 = (this + 192);
          v86 = (a2 + 72);
          if (v84 >= *(this + 26))
          {
            v87 = std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__emplace_back_slow_path<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&>(v85, v86);
          }

          else
          {
            std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__construct_one_at_end[abi:nn200100]<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&>(v85, v86);
            v87 = v84 + 32;
          }

          *(this + 25) = v87;
        }
      }

      return;
    }

    v68 = (*(**(*(this + 36) + 8) + 72))(*(*(this + 36) + 8));
    if (!v68)
    {
      return;
    }

    v69 = *(v68 + 424);
    v70 = *(v68 + 432);
    v181 = v68;
    if (v69 == v70)
    {
      goto LABEL_81;
    }

LABEL_65:
    v72 = **v69;
    v71 = (*v69)[1];
    while (1)
    {
      if (v72 == v71)
      {
        v69 += 2;
        if (v69 == v70)
        {
LABEL_81:
          *(this + 82) = *(v181 + 84);
          return;
        }

        goto LABEL_65;
      }

      v73 = **v72;
      if (v73 == 1)
      {
        v74 = 3;
      }

      else
      {
        if (v73 != 2)
        {
          goto LABEL_79;
        }

        v74 = 4;
      }

      v75 = [[VKImageSourceKey alloc] initWithDataType:v74];
      __dst[0] = v75;
      v76 = *v72 + 8;
      if ((*v72)[31] < 0)
      {
        v76 = *v76;
      }

      v77 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76];
      [(VKImageSourceKey *)v75 setText:v77];

      v78 = *v72 + 32;
      if ((*v72)[55] < 0)
      {
        v78 = *v78;
      }

      v79 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v78];
      [(VKImageSourceKey *)v75 setRelatedText:v79];

      v80 = *(this + 9);
      if (v80 >= *(this + 10))
      {
        v82 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 8, __dst);
      }

      else
      {
        v81 = v75;
        *v80 = &unk_1F2A381B8;
        v80[1] = v81;
        v82 = (v80 + 3);
        *(this + 9) = v80 + 3;
      }

      *(this + 9) = v82;

LABEL_79:
      v72 += 2;
    }
  }

  switch(v5)
  {
    case 8u:
      v43 = *(this + 39);
      if (v43)
      {
        v44 = geo::codec::VectorTile::transitNodeForFeatureID(*(v43 + 1416), *(v43 + 1424), *(this + 38));
        if (v44)
        {
          v45 = v44;
          v46 = *(v44 + 8);
          if (v46 && (v47 = std::__shared_weak_count::lock(v46)) != 0)
          {
            v177 = v47;
            v48 = *v45;
          }

          else
          {
            v177 = 0;
            v48 = 0;
          }

          if (*(v45 + 274))
          {
            v88 = 0;
            v179 = vdupq_n_s32(0x437F0000u);
            v180 = vdupq_n_s32(0x3B808081u);
            do
            {
              v89 = geo::codec::vectorTransitLineForTransitNodeSubtitleIndex(v45, v88);
              if (v89)
              {
                v90 = v89;
                if (geo::codec::featureGetNativeShieldCount(v89))
                {
                  v197 = 0;
                  v195 = 0;
                  v186 = 0;
                  geo::codec::featureGetNativeShield(v90, 0, &v197, &v186, &v195);
                  if (v186)
                  {
                    v91.i32[0] = v90[19];
                    v201 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v91))), v180);
                    geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(__dst, &v201);
                    v182 = *__dst;
                    v92 = [VKImageSourceKey alloc];
                    v93 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v182, v179)));
                    v201.i32[0] = vuzp1_s8(v93, v93).u32[0];
                    v94 = [(VKImageSourceKey *)v92 initWithShieldText:v197 locale:v195 type:v186 color:&v201];
                    __dst[0] = v94;
                    [(VKImageSourceKey *)v94 setDataType:2];
                    v201.i64[0] = 0;
                    geo::codec::transitLineGetSubtitleNativeLabel(v90, &v201);
                    v95 = v201.i64[0];
                    if (v201.i64[0])
                    {
                      v96 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v201.i64[0]];
                      v2 = v96;
                    }

                    else
                    {
                      v96 = [(VKImageSourceKey *)v94 shieldText];
                      v3 = v96;
                    }

                    [(VKImageSourceKey *)v94 setText:v96];
                    if (v95)
                    {
                      v97 = v2;
                    }

                    else
                    {
                      v97 = v3;
                    }

                    v98 = *(v48 + 1320) + 72 * v90[20];
                    v184 = 0;
                    geo::codec::transitSystemInfoGetNativeLabel(v48, v98, &v184, 0);
                    if (v184)
                    {
                      v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
                      [__dst[0] setRelatedText:v99];
                    }

                    v100 = *(this + 9);
                    if (v100 >= *(this + 10))
                    {
                      v102 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 8, __dst);
                      v101 = __dst[0];
                    }

                    else
                    {
                      v101 = __dst[0];
                      *v100 = &unk_1F2A381B8;
                      v100[1] = v101;
                      v102 = (v100 + 3);
                      *(this + 9) = v100 + 3;
                    }

                    *(this + 9) = v102;
                  }
                }
              }

              ++v88;
            }

            while (*(v45 + 274) > v88);
          }

          v103 = v177;
          if (v177)
          {
            goto LABEL_195;
          }
        }
      }

      break;
    case 9u:
      if (*(this + 39))
      {
        md::StandardLabelMarker::populateRelatedTextFromTransitLines(this);
        md::StandardLabelMarker::populateRelatedSubTextFromTransitLines(this);
        v58 = geo::codec::VectorTile::transitLineForFeatureID(*(*(this + 39) + 1288), *(*(this + 39) + 1296), *(this + 38));
        if (v58)
        {
          v59 = v58;
          NativeShieldCount = geo::codec::featureGetNativeShieldCount(v58);
          v61 = *(this + 30);
          if (v61)
          {
            v62 = std::__shared_weak_count::lock(v61);
            if (v62)
            {
              v9 = v62;
              if (NativeShieldCount)
              {
                v63 = *(this + 29);
                if (v63)
                {
                  __dst[0] = 0;
                  v201.i64[0] = 0;
                  v197 = 0;
                  geo::codec::featureGetNativeShield(v59, 0, __dst, &v197, &v201);
                  if (v197)
                  {
                    (*(**(*(v63 + 168) + 56) + 16))(&v186);
                    v64 = [VKImageSourceKey alloc];
                    LODWORD(v184) = v186;
                    v65 = [(VKImageSourceKey *)v64 initWithShieldText:__dst[0] locale:v201.i64[0] type:v197 color:&v184];
                    v195 = v65;
                    v66 = *(this + 9);
                    if (v66 >= *(this + 10))
                    {
                      v67 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 8, &v195);
                    }

                    else
                    {
                      v67 = geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v66, v65) + 3;
                      *(this + 9) = v67;
                    }

                    *(this + 9) = v67;
                    v118 = *(this + 17);
                    if (v118 >= *(this + 18))
                    {
                      v119 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 16, &v195);
                    }

                    else
                    {
                      v119 = geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v118, v65) + 3;
                      *(this + 17) = v119;
                    }

                    *(this + 17) = v119;
                  }
                }
              }

              goto LABEL_194;
            }
          }
        }
      }

      break;
    case 0xAu:
      if (*(this + 39))
      {
        md::StandardLabelMarker::populateRelatedTextFromTransitLines(this);
        md::StandardLabelMarker::populateRelatedSubTextFromTransitLines(this);
      }

      v6 = *(*(this + 36) + 8);
      if (v6)
      {
        v7 = *(this + 30);
        if (v7)
        {
          v8 = std::__shared_weak_count::lock(v7);
          if (v8)
          {
            v9 = v8;
            v10 = *(this + 29);
            if (!v10)
            {
LABEL_194:
              v103 = v9;
LABEL_195:
              std::__shared_weak_count::__release_shared[abi:nn200100](v103);
              return;
            }

            v186 = 0;
            v187 = 0uLL;
            v184 = 0;
            v185 = 0;
            std::mutex::lock((v6 + 8));
            v11 = *(v6 + 152);
            if (v11)
            {
              v12 = (*(*v11 + 16))(v11, &v184);
              std::mutex::unlock((v6 + 8));
              if (!v184 || !v12)
              {
                goto LABEL_173;
              }

              v178 = v9;
              std::mutex::lock((v6 + 440));
              v197 = 0;
              v198 = 0;
              v199 = 0;
              v14 = 0;
              v15 = *(v6 + 544) - *(v6 + 536);
              if (v15)
              {
                v16 = 0;
                v17 = v15 >> 5;
                if (v17 <= 1)
                {
                  v18 = 1;
                }

                else
                {
                  v18 = v17;
                }

                v19 = 12;
                v20 = v10;
                do
                {
                  if (*(*(v6 + 536) + v19))
                  {
                    if (v14 >= v199)
                    {
                      v21 = v197;
                      v22 = v14 - v197;
                      v23 = (v14 - v197) >> 3;
                      v24 = v23 + 1;
                      if ((v23 + 1) >> 61)
                      {
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      v25 = v199 - v197;
                      if ((v199 - v197) >> 2 > v24)
                      {
                        v24 = v25 >> 2;
                      }

                      if (v25 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v26 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v26 = v24;
                      }

                      v192 = &v200;
                      if (v26)
                      {
                        v27 = mdm::zone_mallocator::instance(v13);
                        v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long>(v27, v26);
                        v21 = v197;
                        v22 = v198 - v197;
                        v29 = (v198 - v197) >> 3;
                      }

                      else
                      {
                        v28 = 0;
                        v29 = v23;
                      }

                      v30 = &v28[8 * v23];
                      v31 = &v28[8 * v26];
                      v32 = &v30[-v29];
                      *v30 = v16;
                      v14 = v30 + 1;
                      memcpy(v32, v21, v22);
                      v33 = v197;
                      v34 = v199;
                      v197 = v32;
                      v198 = v14;
                      v199 = v31;
                      v190 = v33;
                      v191 = v34;
                      __dst[0] = v33;
                      __dst[1] = v33;
                      v13 = std::__split_buffer<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator> &>::~__split_buffer(__dst);
                      v10 = v20;
                    }

                    else
                    {
                      *v14++ = v16;
                    }

                    v198 = v14;
                  }

                  ++v16;
                  v19 += 32;
                }

                while (v18 != v16);
                v35 = v197;
                v9 = v178;
              }

              else
              {
                v35 = 0;
              }

              v120 = 126 - 2 * __clz(v14 - v35);
              __dst[0] = v6;
              if (v14 == v35)
              {
                v121 = 0;
              }

              else
              {
                v121 = v120;
              }

              std::__introsort<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,false>(v35, v14, __dst, v121, 1);
              v196[2] = 0;
              v195 = v196;
              v196[0] = 0;
              if (v198 == v197)
              {
                v143 = 0;
              }

              else
              {
                v122 = 0;
                if (((v198 - v197) >> 3) <= 1)
                {
                  v123 = 1;
                }

                else
                {
                  v123 = (v198 - v197) >> 3;
                }

                do
                {
                  v124 = *&v197[8 * v122];
                  v125 = *(v6 + 352) + 48 * *(*(v6 + 536) + 32 * v124 + 10);
                  LOBYTE(v191) = *(v125 + 24);
                  if (*(v125 + 23) < 0)
                  {
                    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *v125, *(v125 + 8));
                  }

                  else
                  {
                    v126 = *v125;
                    v190 = *(v125 + 16);
                    *__dst = v126;
                  }

                  v192 = *(v125 + 32);
                  v193 = *(v125 + 40);
                  v194 = *(v125 + 44);
                  inited = geo::codec::vectorTransitLineAlongLink(v12, v124);
                  if (inited)
                  {
                    (*(**(*(v10 + 168) + 56) + 16))(&v201);
                    v193 = v201.i32[0];
                    inited = std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelShieldEntry,md::LabelShieldEntry const&>(&v195, __dst, __dst);
                    if (inited)
                    {
                      v128 = v187;
                      if (v187 >= *(&v187 + 1))
                      {
                        v130 = 0xAAAAAAAAAAAAAAABLL * ((v187 - v186) >> 4);
                        v131 = v130 + 1;
                        if (v130 + 1 > 0x555555555555555)
                        {
                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        if (0x5555555555555556 * ((*(&v187 + 1) - v186) >> 4) > v131)
                        {
                          v131 = 0x5555555555555556 * ((*(&v187 + 1) - v186) >> 4);
                        }

                        if (0xAAAAAAAAAAAAAAABLL * ((*(&v187 + 1) - v186) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                        {
                          v132 = 0x555555555555555;
                        }

                        else
                        {
                          v132 = v131;
                        }

                        v203 = &v188;
                        if (v132)
                        {
                          v133 = mdm::zone_mallocator::instance(inited);
                          v134 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v133, v132);
                        }

                        else
                        {
                          v134 = 0;
                        }

                        v136 = &v134[48 * v130];
                        v201.i64[0] = v134;
                        v201.i64[1] = v136;
                        *&v202 = v136;
                        *(&v202 + 1) = &v134[48 * v132];
                        v136[24] = v191;
                        if (SHIBYTE(v190) < 0)
                        {
                          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v134[48 * v130], __dst[0], __dst[1]);
                        }

                        else
                        {
                          v137 = *__dst;
                          *(v136 + 2) = v190;
                          *v136 = v137;
                        }

                        *(v136 + 4) = v192;
                        *(v136 + 10) = v193;
                        v136[44] = v194;
                        *&v202 = v202 + 48;
                        v138 = &v186[v201.i64[1] - v187];
                        std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>,md::LabelShieldEntry*>(v186, v187, v138);
                        v139 = v186;
                        v140 = *(&v187 + 1);
                        v186 = v138;
                        v183 = v202;
                        v187 = v202;
                        *&v202 = v139;
                        *(&v202 + 1) = v140;
                        v201.i64[0] = v139;
                        v201.i64[1] = v139;
                        inited = std::__split_buffer<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator> &>::~__split_buffer(&v201);
                        v135 = v183;
                      }

                      else
                      {
                        *(v187 + 24) = v191;
                        if (SHIBYTE(v190) < 0)
                        {
                          inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v128, __dst[0], __dst[1]);
                        }

                        else
                        {
                          v129 = *__dst;
                          *(v128 + 16) = v190;
                          *v128 = v129;
                        }

                        *(v128 + 32) = v192;
                        *(v128 + 40) = v193;
                        *(v128 + 44) = v194;
                        v135 = v128 + 48;
                      }

                      *&v187 = v135;
                    }
                  }

                  if (SHIBYTE(v190) < 0)
                  {
                    v141 = __dst[0];
                    v142 = mdm::zone_mallocator::instance(inited);
                    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v142, v141);
                  }

                  ++v122;
                }

                while (v123 != v122);
                v143 = v196[0];
                v9 = v178;
              }

              std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(v143);
              std::vector<unsigned long,geo::allocator_adapter<unsigned long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v197);
              v110 = (v6 + 440);
            }

            else
            {
              v110 = (v6 + 8);
            }

            std::mutex::unlock(v110);
LABEL_173:
            v144 = v185;
            if (v185)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v185);
            }

            v145 = v186;
            for (i = v187; v145 != i; v145 += 48)
            {
              LOBYTE(v191) = v145[24];
              if (v145[23] < 0)
              {
                v144 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *v145, *(v145 + 1));
              }

              else
              {
                v147 = *v145;
                v190 = *(v145 + 2);
                *__dst = v147;
              }

              v192 = *(v145 + 4);
              v193 = *(v145 + 10);
              v194 = v145[44];
              if (v192)
              {
                v148 = [VKImageSourceKey alloc];
                if (SHIBYTE(v190) >= 0)
                {
                  v149 = __dst;
                }

                else
                {
                  v149 = __dst[0];
                }

                LODWORD(v195) = v193;
                v150 = [(VKImageSourceKey *)v148 initWithShieldText:v149 locale:0 type:v192 color:&v195];
                v201.i64[0] = v150;
                v151 = *(this + 9);
                if (v151 >= *(this + 10))
                {
                  v152 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 8, &v201);
                }

                else
                {
                  v152 = geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v151, v150) + 3;
                  *(this + 9) = v152;
                }

                *(this + 9) = v152;
                v153 = *(this + 17);
                if (v153 >= *(this + 18))
                {
                  v154 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(this + 16, &v201);
                }

                else
                {
                  v154 = geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v153, v150) + 3;
                  *(this + 17) = v154;
                }

                *(this + 17) = v154;
              }

              if (SHIBYTE(v190) < 0)
              {
                v155 = __dst[0];
                v156 = mdm::zone_mallocator::instance(v144);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v156, v155);
              }
            }

            __dst[0] = &v186;
            std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](__dst);
            goto LABEL_194;
          }
        }
      }

      break;
  }
}

void sub_1B2AEC7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (*(v33 - 121) < 0)
  {
    v35 = *(v33 - 144);
    v36 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v36, v35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::StandardLabelMarker::isSelectable(md::StandardLabelMarker *this)
{
  v1 = *(this + 36);
  if (*(v1 + 1156))
  {
    return 1;
  }

  result = *(v1 + 272);
  if (result)
  {
    return (*(*result + 648))();
  }

  return result;
}

uint64_t md::StandardLabelMarker::isCluster(md::StandardLabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v5, this);
  v2 = (*(**(*(this + 36) + 8) + 72))(*(*(this + 36) + 8));
  if (v2)
  {
    isCluster = md::LabelExternalPointFeature::isCluster(v2);
  }

  else
  {
    isCluster = 0;
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return isCluster;
}

void sub_1B2AECAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::StandardLabelMarker::~StandardLabelMarker(md::StandardLabelMarker *this)
{
  *this = &unk_1F2A2C6F8;
  atomic_fetch_add((*(this + 36) + 1385), 0xFFu);
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 37);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::LabelMarker::~LabelMarker(this);
}

{
  md::StandardLabelMarker::~StandardLabelMarker(this);

  JUMPOUT(0x1B8C62190);
}

void md::LabelMarker::~LabelMarker(md::LabelMarker *this)
{
  *this = &unk_1F2A2C9C8;
  v4 = this + 256;
  std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 30);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v4 = this + 192;
  std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 160;
  std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 128;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 96;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = this + 64;
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 32));
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 32;
        std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v6, v4);
  }
}

void std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      v6 = v3 - 3;
      v7 = v3 - 3;
      v8 = v3 - 3;
      do
      {
        v9 = *v8;
        v8 -= 3;
        a1 = (*v9)(v7);
        v6 -= 3;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v4 = **v5;
    }

    v1[1] = v2;
    v11 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v11, v4);
  }
}

void md::StandardLabelMarker::styleAttributes(md::StandardLabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v3, this);
  (*(**(*(this + 36) + 8) + 600))();
  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void sub_1B2AED05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelMarker::acquireDisplayLock(md::LabelMarker *this, uint64_t a2)
{
  v3 = *(a2 + 240);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a2 + 232);
    if (v7)
    {
      v8 = v7 + 24;
      std::recursive_mutex::lock((v7 + 24));
      v9 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *this = v7;
    *(this + 1) = v6;
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    *(this + 2) = v8;
    *(this + 24) = v9;

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 24) = 0;
    *(this + 2) = 0;
  }
}

BOOL NSStringMapComparison::operator()(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    if (v3)
    {
      v5 = [v3 compare:v4] == -1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_DWORD *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::moveContent(gss::StyleAttribute*,unsigned short *,BOOL)::{lambda(unsigned long,unsigned long)#1} &,unsigned int *,0>(_DWORD *result, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * v6);
  v9 = *(a6 + 4 * v7);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v7 = *a3;
      goto LABEL_14;
    }

    *a2 = v10;
    *a3 = v6;
    v12 = *a2;
    v13 = *result;
    if (*(a6 + 4 * v12) >= *(a6 + 4 * v13))
    {
      v7 = v6;
      v10 = v6;
      goto LABEL_14;
    }

    *result = v12;
    *a2 = v13;
    v7 = *a3;
  }

  else
  {
    if (v11 >= v8)
    {
      *result = v6;
      *a2 = v7;
      v10 = *a3;
      if (*(a6 + 4 * *a3) >= v9)
      {
        v7 = *a3;
        goto LABEL_14;
      }

      *a2 = v10;
    }

    else
    {
      *result = v10;
    }

    *a3 = v7;
  }

  v10 = v7;
LABEL_14:
  v14 = *a4;
  if (*(a6 + 4 * v14) < *(a6 + 4 * v7))
  {
    *a3 = v14;
    *a4 = v10;
    v15 = *a3;
    v16 = *a2;
    if (*(a6 + 4 * v15) < *(a6 + 4 * v16))
    {
      *a2 = v15;
      *a3 = v16;
      v17 = *a2;
      v18 = *result;
      if (*(a6 + 4 * v17) < *(a6 + 4 * v18))
      {
        *result = v17;
        *a2 = v18;
      }
    }
  }

  v19 = *a5;
  v20 = *a4;
  if (*(a6 + 4 * v19) < *(a6 + 4 * v20))
  {
    *a4 = v19;
    *a5 = v20;
    v21 = *a4;
    v22 = *a3;
    if (*(a6 + 4 * v21) < *(a6 + 4 * v22))
    {
      *a3 = v21;
      *a4 = v22;
      v23 = *a3;
      v24 = *a2;
      if (*(a6 + 4 * v23) < *(a6 + 4 * v24))
      {
        *a2 = v23;
        *a3 = v24;
        v25 = *a2;
        v26 = *result;
        if (*(a6 + 4 * v25) < *(a6 + 4 * v26))
        {
          *result = v25;
          *a2 = v26;
        }
      }
    }
  }

  return result;
}

double VKCameraDistanceForDisplayZoomLevel(float a1, VKCamera *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [(VKCamera *)v3 verticalFieldOfView];
    v5 = v18 * 0.5;
  }

  else
  {
    v5 = 0.0;
  }

  [(VKCamera *)v4 maxPitch];
  v7 = v6;
  [(VKCamera *)v4 depthForViewWidth:exp2(-a1)];
  v9 = v8;
  [(VKCamera *)v4 maxPitch];
  v11 = v10;
  *&v10 = v5;
  v12 = cosf(*&v10);
  v13 = v7;
  v14 = cosf(v13);
  v15 = v11 - v5;
  v16 = v9 * cosf(v15) / (v14 * v12);

  return v16;
}

void std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    v3 = grl::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(v3, a1);
  }
}

uint64_t std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void grl::IconModifiers::~IconModifiers(grl::IconModifiers *this)
{
  std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](this + 184);
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    *(this + 18) = v3;
    operator delete(v3);
  }

  std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::destroy(*(this + 14));
  if (*(this + 72) == 1)
  {
    if (*(this + 103) < 0)
    {
      operator delete(*(this + 10));
    }

    *(this + 72) = 0;
  }

  if (*(this + 60) == 1)
  {
    *(this + 60) = 0;
  }

  if (*(this + 52) == 1)
  {
    *(this + 52) = 0;
  }

  if (*(this + 45) == 1)
  {
    *(this + 45) = 0;
  }

  if (*(this + 40) == 1)
  {
    *(this + 40) = 0;
  }

  if (*(this + 35) == 1)
  {
    *(this + 35) = 0;
  }

  if (*(this + 30) == 1)
  {
    *(this + 30) = 0;
  }

  if (*(this + 25) == 1)
  {
    *(this + 25) = 0;
  }

  if (*(this + 16) == 1)
  {
    *(this + 16) = 0;
  }
}

uint64_t std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1B2AEE374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);

  _Unwind_Resume(a1);
}

uint64_t ___ZN3gdc5TimerC2EPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v3, a1 + 40);
  gdc::Timer::handleEvent(v1, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

uint64_t gdc::Timer::handleEvent(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 16));
  v4 = *(a1 + 8);
  if (v4 <= 0.0)
  {
    *(a1 + 96) = 0;
  }

  else
  {
    *(a1 + 88) = CFAbsoluteTimeGetCurrent() + v4;
  }

  std::mutex::unlock((a1 + 16));
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(*v5 + 48);

    return v6();
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    return md::LabelManager::collisionTimerDidFire(v8);
  }
}

uint64_t md::LabelManager::collisionTimerDidFire(uint64_t this)
{
  atomic_store(1u, (this + 3412));
  v1 = atomic_load((this + 3053));
  if (v1)
  {
    v2 = this;
    v3 = *(this + 136);
    if (v3)
    {
      this = *(v3 + 56);
      if (this)
      {
        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(this, v2, 9);
      }
    }
  }

  return this;
}

uint64_t md::DaVinciMetaTileData::cellPosition(unsigned __int16 a1, float32_t a2, float a3)
{
  v3.f32[0] = 1.0 - a3;
  v3.f32[1] = a2;
  v4 = vmin_s32(vmax_s32(vcvt_s32_f32(vrndm_f32(vmul_n_f32(v3, a1))), 0), vdup_n_s32(a1 - 1));
  return v4.u16[2] | (v4.u16[0] << 16);
}

float gdc::NormalizedZoomLevel::NormalizedZoomLevel(gdc::NormalizedZoomLevel *this, float a2, double a3, double a4)
{
  result = fminf(fmaxf(a2, 1.0), 25.0);
  *this = result;
  *(this + 1) = a3;
  *(this + 2) = a4;
  return result;
}

gdc::DisplayZoomLevel *gdc::DisplayZoomLevel::DisplayZoomLevel(gdc::DisplayZoomLevel *this, const gdc::NormalizedZoomLevel *a2)
{
  v4 = *(a2 + 2);
  v5 = 0.0;
  if (v4 > 0.0)
  {
    v5 = log2(*(a2 + 1) / v4);
  }

  *this = fminf(fmaxf(*a2 + v5, 1.0), 25.0);
  return this;
}

void sub_1B2AEF22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, std::__shared_weak_count *);
  gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(va1);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *gss::CartoStyle<gss::ScenePropertyID>::valueForKey<unsigned int>(unsigned __int8 ***a1, unsigned int a2, _BYTE *a3)
{
  if (!a1 || (v6 = *a1, geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*a1, a2) == *(v6 + 6)))
  {
    if (a3)
    {
      *a3 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,unsigned int>(a2);
  }

  else
  {
    v7 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6 + 6, a2);
    if (v7 == *(v6 + 30))
    {
      return &gss::PropertySetValueHelper<gss::ScenePropertyID,unsigned int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

    else
    {
      return &v6[6][4 * v7 + *(v6 + 14)];
    }
  }
}

uint64_t gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(uint64_t a1, unsigned __int8 a2, unsigned int a3)
{
  v6 = *a1;
  if (*a1 && (v7 = *v6, LODWORD(v6) = *v6 == 1.0, *(a1 + 10) == 1) && (v7 != 0.0 ? (v8 = v7 == 1.0) : (v8 = 1), !v8) || (v9 = *(a1 + v6 + 11), v9 == 2))
  {
    if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZAtEnd(a1, a2, a3, 0))
    {
      return 1;
    }

    v9 = 1;
  }

  return gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZAtEnd(a1, a2, a3, v9);
}

uint64_t gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZAtEnd(uint64_t a1, unsigned __int8 a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 16 * a4 + 16);
  if (!v4)
  {
    return 0;
  }

  v9 = *(v4 + 72);
  if (!v9 || (v17 = *v9 + 120 * *(v9 + a3 + 16), geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v17, a2) == *(v17 + 12)))
  {
    v10 = a1 + 16 * a4;
    if (!*(v10 + 56))
    {
      return 0;
    }

    v11 = *(v10 + 48);
    v12 = 8 * *(v10 + 56);
    v13 = a3;
    while (1)
    {
      v14 = *(*v11 + 72);
      if (v14)
      {
        v15 = *v14 + 120 * *(v14 + v13 + 16);
        if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v15, a2) != *(v15 + 12))
        {
          break;
        }
      }

      v11 += 8;
      v12 -= 8;
      if (!v12)
      {
        return 0;
      }
    }
  }

  return 1;
}

void *gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(uint64_t a1, int a2, unsigned int a3)
{
  v6 = *a1;
  if (!*a1 || (v7 = *v6, LODWORD(v6) = *v6 == 1.0, *(a1 + 10) != 1) || (v7 != 0.0 ? (v8 = v7 == 1.0) : (v8 = 1), v8))
  {
    v9 = *(a1 + v6 + 11);
    if (v9 != 2)
    {
      return gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<float>(a1, a2, a3, v9, 0);
    }
  }

  v12 = 1;
  v11 = 1;
  gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<float>(a1, a2, a3, 0, &v12);
  return gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<float>(a1, a2, a3, 1u, &v11);
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<float>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  v7 = *(a1 + 16 * a4 + 16);
  if (v7)
  {
    v9 = a1 + 16 * a4;
    if (*(v9 + 56))
    {
      v10 = *(v9 + 48);
      v11 = 8 * *(v9 + 56);
      while (1)
      {
        v12 = *(*v10 + 72);
        if (v12)
        {
          v13 = *v12 + 120 * *(v12 + a3 + 16);
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, a2) != *(v13 + 12))
          {
            break;
          }
        }

        v10 += 8;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      return gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<float>(v12, a2, a3);
    }

    else
    {
LABEL_11:
      v15 = *(v7 + 72);

      return gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(v15, a2, a3, a5);
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,float>(a2);
  }
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(void *a1, int a2, unsigned int a3, _BYTE *a4)
{
  if (!a1 || (a3 >= 0x17 ? (v7 = 23) : (v7 = a3), v8 = *a1 + 120 * *(a1 + v7 + 16), geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v8, a2) == *(v8 + 12)))
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,float>(a2);
  }

  else
  {
    v9 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v8 + 48), a2);
    if (v9 == *(v8 + 60))
    {
      return &gss::PropertySetValueHelper<gss::ScenePropertyID,float>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v8 + 48) + *(v8 + 56) + 4 * v9);
    }
  }
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<unsigned int>(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10 + 120 * *(v10 + a2 + 16);
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11, 0x15u) != *(v11 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      return gss::CartoStyle<gss::ScenePropertyID>::valueForExistingKeyAtZ<unsigned int>(v10, 0x15u, a2);
    }

    else
    {
LABEL_11:
      v13 = *(v5 + 72);

      return gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<unsigned int>(v13, 0x15u, a2, a4);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,unsigned int>(0x15u);
  }
}

void *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<unsigned int>(void *a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  if (!a1 || (a3 >= 0x17 ? (v7 = 23) : (v7 = a3), v8 = *a1 + 120 * *(a1 + v7 + 16), geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v8, a2) == *(v8 + 12)))
  {
    if (a4)
    {
      *a4 = 0;
    }

    return gss::defaultValueForKey<gss::ScenePropertyID,unsigned int>(a2);
  }

  else
  {
    v9 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v8 + 48), a2);
    if (v9 == *(v8 + 60))
    {
      return &gss::PropertySetValueHelper<gss::ScenePropertyID,unsigned int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v8 + 48) + *(v8 + 56) + 4 * v9);
    }
  }
}

uint64_t stringForLayoutReasonsMask(_BYTE *a1, unint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v10);
  v4 = 0;
  for (i = 0; i != 17; ++i)
  {
    v6 = md::NeedsLayoutReasonList[i];
    if ((a2 >> v6))
    {
      if (v4)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, "|", 1);
      }

      v7 = off_1E7B38B30[v6];
      v8 = strlen(v7);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, v7, v8);
      v4 = 1;
    }
  }

  std::stringbuf::str[abi:nn200100](a1, &v11);
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v14);
}

void sub_1B2AEFE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va);
  MEMORY[0x1B8C620C0](va1);
  _Unwind_Resume(a1);
}

float md::MapEngine::calculateAdjustedRate(md::MapEngine *this, unint64_t a2)
{
  result = 1.0;
  if (*(*(this + 5253) + 48) != 17)
  {
    v3 = *(this + 22);
    v4 = a2;
    v5 = exp((a2 + -30.0) * -0.05);
    v6 = v4;
    v7 = -0.015 / (v5 + 1.0) + -0.005 + -0.18 / (exp(v6 * -0.05 + 6.0) + 1.0);
    if (v3)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    return v8 + exp(v7 * v6) * (v3 - (v3 != 0));
  }

  return result;
}

int *gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, _BYTE *a5)
{
  if (a4 == 2)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = *v9;
      LODWORD(v9) = *v9 == 1.0;
      if (*(a1 + 10) == 1 && v10 != 0.0 && v10 != 1.0)
      {
        goto LABEL_30;
      }
    }

    v12 = a1 + v9;
  }

  else
  {
    v12 = a1 + a4;
  }

  v13 = *(v12 + 11);
  if (v13 == 2)
  {
LABEL_30:
    v29 = 1;
    v28 = 1;
    gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<float>(a1, a2, a3, 0, &v29);
    result = gss::RenderStyle<gss::PropertyID>::styleValueForKeyAtZ<float>(a1, a2, a3, 1u, &v28);
    if (a5)
    {
      *a5 = (v29 | v28) & 1;
    }

    return result;
  }

  v14 = a1 + 16 * v13;
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_12:
    if (a5)
    {
      *a5 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,float>(a2);
  }

  if (!*(v14 + 56))
  {
LABEL_21:
    v21 = *(v15 + 72);
    if (v21)
    {
      v22 = a3 >= 0x17 ? 23 : a3;
      v23 = *(v21 + v22 + 16);
      v24 = *v21;
      v25 = *v21 + 120 * v23;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, a2) != *(v25 + 12))
      {
        v26 = v24 + 120 * v23;
        v27 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v26 + 48), a2);
        if (v27 == *(v26 + 60))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,float>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          return (*(v26 + 48) + *(v26 + 56) + 4 * v27);
        }
      }
    }

    goto LABEL_12;
  }

  v17 = *(v14 + 48);
  v18 = 8 * *(v14 + 56);
  while (1)
  {
    v19 = *(*v17 + 72);
    if (v19)
    {
      v20 = *v19 + 120 * *(v19 + a3 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v20, a2) != *(v20 + 12))
      {
        return gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<float>(v19, a2, a3);
      }
    }

    v17 += 8;
    v18 -= 8;
    if (!v18)
    {
      goto LABEL_21;
    }
  }
}

void *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(uint64_t a1, unsigned int a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      while (1)
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v13 = *v10;
          v11 = v10 + 2;
          v12 = v13;
          v14 = v13 + 120 * *(v11 + a2);
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v14, 0x20u) != *(v14 + 12))
          {
            break;
          }
        }

        v8 += 8;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (a2 >= 0x17)
      {
        v15 = 23;
      }

      else
      {
        v15 = a2;
      }

      v16 = v12 + 120 * *(v11 + v15);
      v17 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v16 + 72), 0x20u);
      if (v17 != *(v16 + 84))
      {
        v18 = *(v16 + 72);
        v19 = *(v16 + 80);
        return (v18 + v19 + 8 * v17);
      }

      return &gss::PropertySetValueHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

LABEL_13:
    v20 = *(v5 + 72);
    if (v20)
    {
      v22 = a2 >= 0x17 ? 23 : a2;
      v23 = *v20 + 120 * *(v20 + v22 + 16);
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, 0x20u) != *(v23 + 12))
      {
        v17 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v23 + 72), 0x20u);
        if (v17 != *(v23 + 84))
        {
          v18 = *(v23 + 72);
          v19 = *(v23 + 80);
          return (v18 + v19 + 8 * v17);
        }

        return &gss::PropertySetValueHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,gm::Matrix<float,2,1>>(gss::ScenePropertyID)::_defaultValue;
}

void sub_1B2AF06D8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, std::__shared_weak_count *a7, char a8, uint64_t a9, std::__shared_weak_count *a10, ...)
{
  va_start(va, a10);
  if (a8 == 1)
  {
    (*(*a4 + 56))(a4);
  }

  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a7);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a5);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

double gdc::Spring<double,1,(gdc::SpringType)1>::update(double *a1, double a2)
{
  v4 = *a1;
  v5 = a1[1];
  v14 = gdc::Spring<double,1,(gdc::SpringType)1>::acceleration(a1, *a1, v5);
  v6 = v5 + a2 * 0.5 * v14;
  v7 = gdc::Spring<double,1,(gdc::SpringType)1>::acceleration(a1, v4 + a2 * 0.5 * v5, v6);
  v8 = v5 + a2 * 0.5 * v7;
  v9 = gdc::Spring<double,1,(gdc::SpringType)1>::acceleration(a1, v4 + a2 * 0.5 * v6, v8);
  v10 = v5 + v9 * a2;
  v13 = gdc::Spring<double,1,(gdc::SpringType)1>::acceleration(a1, v4 + v8 * a2, v10);
  v11 = a2 * 0.166666667;
  gdc::Spring<double,1,(gdc::SpringType)1>::updatePosition(a1, v4 + (v10 + v5 + (v8 + v6) * 2.0) * v11);
  result = a1[1] + (v14 + (v9 + v7) * 2.0 + v13) * v11;
  a1[1] = result;
  return result;
}

double gdc::Spring<double,1,(gdc::SpringType)0>::update(double *a1, double a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[1];
  v5 = v3 - *a1;
  v6 = a1[4];
  v7 = -(v4 * v6 - v5 * v2);
  v8 = v4 + a2 * 0.5 * v7;
  v9 = -(v8 * v6 - (v5 + a2 * -0.5 * v4) * v2);
  v10 = v4 + a2 * 0.5 * v9;
  v11 = -(v10 * v6 - (v5 + a2 * -0.5 * v8) * v2);
  v12 = v4 + v11 * a2;
  v13 = v3 - (*a1 + v10 * a2);
  v14 = a2 * 0.166666667;
  v15 = *a1 + (v4 + (v10 + v8) * 2.0 + v12) * v14;
  result = v4 - -(v7 + v13 * v2 + (v11 + v9) * 2.0 - v12 * v6) * v14;
  *a1 = v15;
  a1[1] = result;
  return result;
}

long double gdc::Spring<double,1,(gdc::SpringType)1>::acceleration(double *a1, double a2, double a3)
{
  v5 = a1[3];
  v6 = fmod(3.14159265 - a2 + a1[2], 6.28318531);
  return -(a1[4] * a3 + (3.14159265 - fmod(v6 + 6.28318531, 6.28318531)) * v5);
}

uint64_t md::ElevationRaster::containsWorldPoint(uint64_t a1, float64x2_t a2)
{
  v2 = 1 << *(a1 + 57);
  v3.i64[0] = *(a1 + 64);
  v3.i64[1] = v2 + ~*(a1 + 60);
  v4 = vmulq_n_f64(vmlsq_lane_f64(a2, vcvtq_f64_s64(v3), 1.0 / v2, 0), v2);
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(v4), v4);
  v6.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1B33B09C0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgeq_f32(v5, xmmword_1B33B09C0)).i32[1];
  return vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & 1;
}

uint64_t md::ElevationRaster::elevationInMetersAtWorldPoint(uint64_t a1, int a2, float64x2_t a3)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a1 == *(a1 + 8) || (v4 = 1 << *(a1 + 57), v5.i64[0] = *(a1 + 64), v5.i64[1] = v4 + ~*(a1 + 60), v6 = vmulq_n_f64(vmlsq_lane_f64(a3, vcvtq_f64_s64(v5), 1.0 / v4, 0), v4), v7 = vcvt_f32_f64(v6), v8 = vcvt_hight_f32_f64(v7, v6), v9.i32[0] = vmovn_s32(vcgeq_f32(xmmword_1B33B09C0, v8)).u32[0], v9.i32[1] = vmovn_s32(vcgeq_f32(v8, xmmword_1B33B09C0)).i32[1], (vminv_u16(vcltz_s16(vshl_n_s16(v9, 0xFuLL))) & 1) == 0))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    return v11 | v10 | v12;
  }

  v13 = 1.0 - *&v7.i32[1];
  v14.i64[0] = -1;
  v14.i64[1] = -1;
  v15.i32[0] = v7.i32[0];
  v15.f32[1] = 1.0 - *&v7.i32[1];
  v16 = vmul_f32(v15, vcvt_f32_f64(vcvtq_f64_u64(vaddq_s64(*(a1 + 32), v14))));
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = v16.f32[1];
LABEL_34:
        v35 = md::ElevationRaster::bilinearSample(a1, v16.f32[0], v13);
        goto LABEL_68;
      }

LABEL_33:
      v16.i32[0] = v7.i32[0];
      goto LABEL_34;
    }

    v36 = llroundf(v16.f32[0]);
    v37 = llroundf(v16.f32[1]);
    v38 = v18 - 1;
    if (v18 - 1 >= v36)
    {
      v38 = v36;
    }

    if (v36 >= 0)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v17 - 1;
    if (v40 >= v37)
    {
      v40 = v37;
    }

    if (v37 < 0)
    {
      v40 = 0;
    }

    v41 = v18 * v40;
    if (*(a1 + 24) == 8)
    {
      LOBYTE(v13) = *(v3 + v41 + v39);
    }

    else
    {
      LOWORD(v13) = *(v3 + 2 * v41 + 2 * v39);
    }

    v34 = *(a1 + 52) + (*(a1 + 48) * LODWORD(v13));
LABEL_67:
    v35 = LODWORD(v34) | 0x100000000;
    goto LABEL_68;
  }

  if (a2 == 2)
  {
    v42 = 0;
    v43 = v16.f32[0];
    v44 = *(a1 + 24);
    v45 = v16.f32[1];
    v46 = v17 - 1;
    v47 = *(a1 + 48);
    v48 = *(a1 + 52);
    v49 = v67;
    do
    {
      v50 = 0;
      if (v46 >= v42 + v45)
      {
        v51 = v42 + v45;
      }

      else
      {
        v51 = v46;
      }

      if (v42 + v45 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = v18 * v52;
      v54 = v3 + 2 * v18 * v52;
      v55 = v3 + v53;
      do
      {
        v56 = v43 + v50;
        if (v18 - 1 < v43 + v50)
        {
          v56 = v18 - 1;
        }

        if (v43 + v50 >= 0)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        if (v44 == 8)
        {
          v15.i8[0] = *(v55 + v57);
        }

        else
        {
          v15.i16[0] = *(v54 + 2 * v57);
        }

        v15.f32[0] = v48 + (v47 * v15.u32[0]);
        *&v49[4 * v50++] = v15.i32[0];
      }

      while (v50 != 4);
      ++v42;
      v49 += 16;
    }

    while (v42 != 4);
    v58 = v67;
    v69 = vld4q_f32(v58);
    v59.i64[0] = 0x4000000040000000;
    v59.i64[1] = 0x4000000040000000;
    __asm
    {
      FMOV            V18.4S, #4.0
      FMOV            V19.4S, #-5.0
      FMOV            V21.4S, #3.0
    }

    v69.val[1] = vmlaq_n_f32(v69.val[1], vmlaq_n_f32(vsubq_f32(v69.val[2], v69.val[0]), vmlaq_n_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v69.val[1], _Q19), _Q18, v69.val[2]), v59, v69.val[0]), v69.val[3]), vmlaq_f32(vsubq_f32(v69.val[3], v69.val[0]), _Q21, vsubq_f32(v69.val[1], v69.val[2])), v16.f32[0] - v43), v16.f32[0] - v43), (v16.f32[0] - v43) * 0.5);
    _Q19.i32[0] = 4.0;
    __asm { FMLA            S18, S19, V4.S[2] }

    v34 = v69.val[1].f32[1] + (((v16.f32[1] - v45) * 0.5) * ((v69.val[1].f32[2] - v69.val[1].f32[0]) + ((((_Q18.f32[0] + (v69.val[1].f32[0] * 2.0)) - v69.val[1].f32[3]) + (((v69.val[1].f32[3] - v69.val[1].f32[0]) + ((v69.val[1].f32[1] - v69.val[1].f32[2]) * 3.0)) * (v16.f32[1] - v45))) * (v16.f32[1] - v45))));
    goto LABEL_67;
  }

  if (a2 != 3)
  {
    goto LABEL_33;
  }

  v19 = 0;
  v20 = 0;
  v21 = llroundf(v16.f32[0]) - 8;
  v22 = llroundf(v16.f32[1]) - 8;
  v23 = 0.0;
  v24 = &gaussianLookup4x4;
  while (2)
  {
    v25 = 0;
    v26 = (v21 + v19);
    v27 = (v21 + v19);
    if (v18 - 1 < v26)
    {
      v26 = v18 - 1;
    }

    v28 = v3 + 2 * v26;
    v29 = v3 + v26;
    do
    {
      if ((v27 & 0x8000) == 0 && v18 > v27)
      {
        v30 = (v22 + v25);
        if ((v30 & 0x80000000) == 0 && v17 > (v22 + v25))
        {
          if (v17 - 1 < v30)
          {
            v30 = v17 - 1;
          }

          v31 = v18 * v30;
          if (*(a1 + 24) == 8)
          {
            v32 = *(v29 + v31);
            if (!*(a1 + 88) || v32 != 255)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v32 = *(v28 + 2 * v31);
            if (!*(a1 + 88) || v32 != 0xFFFF)
            {
LABEL_26:
              v23 = v23 + (*&v24[v25] * (*(a1 + 52) + (*(a1 + 48) * v32)));
              ++v20;
            }
          }
        }
      }

      _CF = v25 >= 0xC;
      v25 += 4;
    }

    while (!_CF);
    v24 += 16;
    _CF = v19 >= 0xC;
    v19 += 4;
    if (!_CF)
    {
      continue;
    }

    break;
  }

  if (v20)
  {
    v34 = v23 / v20;
    goto LABEL_67;
  }

  v35 = 0;
LABEL_68:
  v11 = v35 & 0x100000000;
  v12 = v35 & 0xFFFFFF00;
  v10 = v35;
  return v11 | v10 | v12;
}

uint64_t md::ElevationRaster::bilinearSample(uint64_t *a1, float a2, float a3)
{
  v3 = 0;
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v5 = a2;
  v6 = a3;
  v7 = *a1;
  v8 = a1[4];
  v9 = *(a1 + 10) - 1;
  v10 = *(a1 + 88);
  v11 = 1;
  while (2)
  {
    v12 = 0;
    v13 = v11;
    if (v9 >= v3 + v6)
    {
      v14 = v3 + v6;
    }

    else
    {
      v14 = v9;
    }

    if (v3 + v6 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v8 * v15;
    v17 = v7 + 2 * v8 * v15;
    v18 = v7 + v16;
    v19 = 1;
    v20 = &v28 + 2 * v3;
    do
    {
      v21 = v19;
      if (v8 - 1 >= v12 + v5)
      {
        v22 = v12 + v5;
      }

      else
      {
        v22 = v8 - 1;
      }

      if (v12 + v5 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      if (v4 == 8)
      {
        v24 = *(v18 + v23);
        if (v10 && v24 == 255)
        {
          return 0;
        }
      }

      else
      {
        v24 = *(v17 + 2 * v23);
        if (v10 && v24 == 0xFFFF)
        {
          return 0;
        }
      }

      v25 = v24;
      v19 = 0;
      v20[v12] = *(a1 + 26) + (*(a1 + 12) * v25);
      v12 = 1;
    }

    while ((v21 & 1) != 0);
    v11 = 0;
    v3 = 1;
    if (v13)
    {
      continue;
    }

    break;
  }

  v26 = a2 - v5;
  return COERCE_UNSIGNED_INT(((v29 * v26) + (v28 * (1.0 - v26))) + ((a3 - v6) * (((v30 * (1.0 - v26)) + (v31 * v26)) - ((v29 * v26) + (v28 * (1.0 - v26)))))) | 0x100000000;
}

uint64_t std::deque<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v12 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x55];
    v7 = *v6;
    v8 = *v6 + 48 * v5 + -4080 * (v5 / 0x55);
    v9 = v3[(*(a1 + 40) + v5) / 0x55] + 48 * *(a1 + 40) + 48 * v5 + -4080 * ((*(a1 + 40) + v5) / 0x55);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 40);
        if (v10 != -1)
        {
          (off_1F2A26208[v10])(&v17, v8 + 8);
          v7 = *v6;
        }

        *(v8 + 40) = -1;
        v8 += 48;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v12 = v2;
  }

  *v4 = 0;
  v13 = v12 - v3;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v13 = v2 - v3;
    }

    while (v13 > 2);
    v12 = v2;
  }

  if (v13 == 1)
  {
    v14 = 42;
  }

  else
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = 85;
  }

  *(a1 + 32) = v14;
LABEL_19:
  if (v3 != v12)
  {
    do
    {
      v15 = *v3++;
      operator delete(v15);
    }

    while (v3 != v12);
    v12 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v12)
  {
    *(a1 + 16) = v2 + ((v12 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void std::vector<std::pair<geo::QuadTile,gdc::Registry *>>::emplace_back<std::pair<geo::QuadTile,gdc::Registry *>>(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    __p[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<geo::QuadTile,gdc::Registry *>>>(v9);
    }

    v10 = 40 * v6;
    __p[0] = 0;
    __p[1] = v10;
    *(v10 + 24) = 0;
    *(v10 + 4) = *(a2 + 4);
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(v10 + 24) = *(a2 + 24);
    *(v10 + 32) = *(a2 + 32);
    __p[2] = (40 * v6 + 40);
    __p[3] = 0;
    std::vector<std::pair<geo::QuadTile,gdc::Registry *>>::__swap_out_circular_buffer(a1, __p);
    v5 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(v3 + 24) = 0;
    *(v3 + 4) = *(a2 + 4);
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 32) = *(a2 + 32);
    v5 = v3 + 40;
  }

  a1[1] = v5;
}

uint64_t std::__function::__func<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Box<double,3> const&)#1},std::allocator<md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator() const(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)::{lambda(gm::Box<double,3> const&)#1}>,BOOL ()(gm::Box<double,3> const&)>::operator()(uint64_t a1, double *a2)
{
  v4 = a2[3];
  v5 = *a2;
  if (v4 < *a2 || (v6 = a2[4], v7 = a2[1], v6 < v7) || (v8 = a2[5], v9 = a2[2], v8 < v9))
  {
    v10 = 0;
    return v10 & 1;
  }

  v25[5] = v2;
  v25[6] = v3;
  v13 = *(a1 + 8);
  if (*(v13 + 72) != 1)
  {
    goto LABEL_18;
  }

  if (*(v13 + 64) > **(a1 + 16))
  {
LABEL_8:
    v10 = 0;
    return v10 & 1;
  }

  v14 = *(a1 + 24);
  v15 = 0.0;
  v16 = 1;
  v17 = 3;
  do
  {
    v18 = *v14;
    v19 = a2[3];
    if (*v14 <= v19)
    {
      if (v18 >= *a2)
      {
        goto LABEL_15;
      }

      v16 = 0;
      v20 = *a2 - v18;
    }

    else
    {
      v16 = 0;
      v20 = v18 - v19;
    }

    v15 = v15 + v20 * v20;
LABEL_15:
    ++a2;
    ++v14;
    --v17;
  }

  while (v17);
  if ((v16 & 1) == 0 && (sqrt(v15) - *(*(a1 + 32) + 24)) / **(a1 + 40) > *(v13 + 56))
  {
    goto LABEL_8;
  }

LABEL_18:
  v21 = *(a1 + 32);
  v22 = fmin(fmax(*v21, v5), v4);
  v23 = fmin(fmax(v21[1], v7), v6);
  v24 = fmin(fmax(v21[2], v9), v8);
  *v25 = v22;
  *&v25[1] = v23;
  *&v25[2] = v24;
  if (gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(v21, v25) > v21[3] * v21[3])
  {
    v10 = **(a1 + 48);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

double md::GeometryContext::zTransformConstantData(const geo::QuadTile *a1, unsigned __int8 *a2, int a3, double a4, double a5)
{
  if (gdc::ToCoordinateSystem(a3) && *a2 == 255)
  {
    md::GeometryContext::getGlobeTransformConstantData(&v10, a1, a4, a5, a2, -1);
  }

  return 1.0;
}

uint64_t gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::intersectsRay(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[6] = *MEMORY[0x1E69E9840];
  if (*(a1 + 12) < *a1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 16) < *(a1 + 4))
  {
    goto LABEL_10;
  }

  if (*(a1 + 20) < *(a1 + 8))
  {
    goto LABEL_10;
  }

  v10 = 0;
  v15 = 0;
  v16 = 0.0;
  do
  {
    v18[v10] = *(a1 + 4 * v10);
    ++v10;
  }

  while (v10 != 3);
  do
  {
    v18[v10] = *(a1 + 4 * v10);
    ++v10;
  }

  while (v10 != 6);
  if (gm::Ray<double,3>::segmentIntersectsBox(a2, v18, &v16, &v15, 0.000000999999997, 1.79769313e308))
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    if (v11 == v12)
    {
      v17 = 0;
      operator new();
    }

    v13 = 0;
    while (v11 != v12)
    {
      v13 |= gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::intersectsRay(v11, a2, a3, a4, a5);
      v11 += 168;
    }
  }

  else
  {
LABEL_10:
    LOBYTE(v13) = 0;
  }

  return v13 & 1;
}

void sub_1B2AF2190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

double gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 24; i += 8)
  {
    *(&v5 + i) = *(a1 + i) - *(a2 + i);
  }

  v3 = 0;
  result = 0.0;
  do
  {
    result = result + *(&v5 + v3) * *(&v5 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(int *result, int *a2, int *a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = *(*(*a2 + 392) + 169);
  v6 = *result;
  v7 = *a3;
  v8 = *(*(*a3 + 392) + 169);
  if (v5 <= *(*(*result + 392) + 169))
  {
    if (v8 > v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2 + 2;
      v10 = a2[2];
      a2[2] = a3[2];
      a3[2] = v10;
      v12 = *result;
      if (*(*(*a2 + 392) + 169) > *(*(*result + 392) + 169))
      {
        *result = *a2;
        v9 = result + 2;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v8 > v5)
    {
      v9 = result + 2;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v11 = a3 + 2;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v9 = a2 + 2;
    v13 = result[2];
    result[2] = a2[2];
    a2[2] = v13;
    v6 = *a2;
    if (*(*(*a3 + 392) + 169) > *(*(*a2 + 392) + 169))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*(*a4 + 392) + 169) > *(*(*a3 + 392) + 169))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[2];
    a3[2] = a4[2];
    a4[2] = v16;
    v17 = *a2;
    if (*(*(*a3 + 392) + 169) > *(*(*a2 + 392) + 169))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[2];
      a2[2] = a3[2];
      a3[2] = v18;
      v19 = *result;
      if (*(*(*a2 + 392) + 169) > *(*(*result + 392) + 169))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[2];
        result[2] = a2[2];
        a2[2] = v20;
      }
    }
  }

  return result;
}

void gdc::Registry::add<md::overlayComponents::TileIsInView,std::__wrap_iter<gdc::Entity const*>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    for (i = a2; i != a3; ++i)
    {
      v6 = *i;
      v7 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(a1);
      v20 = v6;
      v8 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v7 + 4, &v20);
      if (v9)
      {
        v10 = v7[11];
        v11 = v7[12];
        if (v10 >= v11)
        {
          v15 = v7[10];
          v16 = v10 - v15 + 1;
          if (v16 < 0)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v17 = v11 - v15;
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            operator new();
          }

          v12 = v10 - v15 + 1;
          memcpy(0, v15, v10 - v15);
          v7[10] = 0;
          v7[11] = v12;
          v7[12] = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          v12 = v10 + 1;
        }

        v7[11] = v12;
        v13 = v7[31];
      }

      else
      {
        v13 = v7[31];
        if (v7[10] + ((v8 - v7[7]) >> 3) != v7[11])
        {
          for (j = v7[16]; j; j = *j)
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v13, &v20, 1);
          }

          continue;
        }
      }

      for (k = v7[22]; k; k = *k)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v13, &v20, 1);
      }
    }
  }
}

uint64_t gdc::Registry::storage<md::components::BoundingVolume>(uint64_t a1)
{
  v3 = 0xA3EC9A682A93D432;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA3EC9A682A93D432);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::TestCameraVertexCollision::operator()(ecs2::Query<md::CameraCollisionResolutionRequest const&>)::$_0::operator() const(md::CameraCollisionResolutionRequest const&,unsigned long &)::{lambda(std::shared_ptr<gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>> const&,md::CollisionMeshType,std::optional<md::CameraCollision> &)#1}::operator()(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v117 = *MEMORY[0x1E69E9840];
  v84 = a3;
  LOBYTE(v115[0]) = 0;
  v116 = 0;
  if (**a1 == 1)
  {
    v8 = *(a1 + 8);
    v115[0] = &unk_1F2A441E0;
    v115[1] = v8;
    v115[3] = v115;
    v116 = 1;
  }

  v82 = 0x10000000000000;
  v83 = 1.79769313e308;
  v9 = *(*a2 + 160);
  v10 = **(a1 + 24);
  v11 = **(a1 + 32);
  v12 = md::GeometryContext::zTransformConstantData(*(a1 + 16), v9, v10, *(v9 + 440), *(v9 + 448));
  v14 = v13;
  v15 = &v103;
  gdc::Tiled::matrixForCameraType(&v103, v9, v10);
  v16 = 0;
  *&v94[40] = 0u;
  v96 = 0;
  v95 = 0u;
  memset(&v94[8], 0, 32);
  *v94 = 0x3FF0000000000000;
  *&v94[40] = 0x3FF0000000000000;
  v97 = 0x3FF0000000000000;
  v98 = 0;
  v102 = 0x3FF0000000000000;
  v99 = 0;
  v100 = 0;
  v101 = v14;
  do
  {
    v17 = 0;
    v18 = v94;
    do
    {
      v19 = 0;
      v20 = 0.0;
      v21 = v15;
      do
      {
        v22 = *v21;
        v21 += 4;
        v20 = v20 + *&v18[v19] * v22;
        v19 += 8;
      }

      while (v19 != 32);
      *(&v108 + 4 * v17++ + v16) = v20;
      v18 += 32;
    }

    while (v17 != 4);
    ++v16;
    v15 = (v15 + 8);
  }

  while (v16 != 4);
  v23 = 0;
  v87 = 0u;
  v89 = 0;
  v24 = v12 * v11;
  v92 = 0u;
  v91 = 0u;
  v88 = 0u;
  v86 = 0u;
  *&v85[8] = 0u;
  v93 = 0x3FF0000000000000;
  *v85 = 0x3FF0000000000000;
  *&v87 = 0x3FF0000000000000;
  v90 = v24;
  v25 = &v108;
  do
  {
    v26 = 0;
    v27 = v85;
    do
    {
      v28 = 0;
      v29 = 0.0;
      v30 = v25;
      do
      {
        v31 = *v30;
        v30 += 4;
        v29 = v29 + *&v27[v28] * v31;
        v28 += 8;
      }

      while (v28 != 32);
      v81[4 * v26++ + v23] = v29;
      v27 += 32;
    }

    while (v26 != 4);
    ++v23;
    v25 = (v25 + 8);
  }

  while (v23 != 4);
  gm::Matrix<double,4,4>::inverted<int,void>(&v108, v81);
  v32 = 0;
  v103 = v108;
  *v104 = v109;
  v33 = 0.0;
  do
  {
    v33 = v33 + *&v104[v32 - 16] * *&v104[v32 - 16];
    v32 += 8;
  }

  while (v32 != 24);
  v34 = sqrt(v33);
  *&v80[3] = v34;
  v35 = *(a1 + 40);
  v36 = *(v35 + 2);
  v103 = *v35;
  *v104 = v36;
  *&v104[8] = 0x3FF0000000000000;
  v80[0] = gm::operator*<double,4,4,1>(&v108, &v103);
  v80[1] = v37;
  v80[2] = v38;
  v39 = *(a1 + 48);
  if (**a1 == 1)
  {
    v40 = *(a1 + 56);
    *v94 = *v39;
    v41 = *(v39 + 2);
    *&v94[24] = *v40;
    v42 = *(v40 + 16);
    *&v94[16] = v41;
    *&v94[40] = v42;
  }

  v43 = *(v39 + 2);
  v103 = *v39;
  *v104 = v43;
  *&v104[8] = 0x3FF0000000000000;
  v44 = gm::operator*<double,4,4,1>(&v108, &v103);
  v45 = 0;
  *&v78 = v44;
  *(&v78 + 1) = v46;
  v79 = v47;
  v48 = *(a1 + 64);
  v49 = *(*(a1 + 72) + 24);
  do
  {
    *&v104[v45 - 16] = *(v48 + v45) * v49;
    v45 += 8;
  }

  while (v45 != 24);
  v50 = 0;
  v110 = v103;
  v111 = *v104;
  do
  {
    *&v104[v50 - 16] = *(&v110 + v50) * v34;
    v50 += 8;
  }

  while (v50 != 24);
  v51 = 0;
  v112 = v103;
  v113 = *v104;
  do
  {
    *&v104[v51 - 16] = *(&v112 + v51) + *(&v78 + v51);
    v51 += 8;
  }

  while (v51 != 24);
  *v85 = v103;
  *&v85[16] = *v104;
  v52 = *v48;
  *&v87 = *(v48 + 2);
  v86 = v52;
  if (gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::intersectsRay(*a2, v85, &v83, &v82, v115))
  {
    v53 = 0;
    v54 = v83;
    do
    {
      *&v104[v53 - 16] = *(&v86 + v53) * v54;
      v53 += 8;
    }

    while (v53 != 24);
    v55 = 0;
    v112 = v103;
    v113 = *v104;
    do
    {
      *&v104[v55 - 16] = *(&v112 + v55) + *&v85[v55];
      v55 += 8;
    }

    while (v55 != 24);
    v56 = *v104;
    v77 = v103;
    v110 = v103;
    v111 = *v104;
    v57 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(&v110, v80);
    v58 = *(*(a1 + 72) + 24);
    v103 = v77;
    *v104 = v56;
    *&v104[8] = 0x3FF0000000000000;
    v59 = gm::operator*<double,4,4,1>(v81, &v103);
    v60 = 0;
    *&v110 = v59;
    *(&v110 + 1) = v61;
    v111 = v62;
    v63 = *(a1 + 56);
    v112 = *v63;
    v113 = *(v63 + 2);
    v64 = 0.0;
    do
    {
      v64 = v64 + *(v63 + v60) * *(&v110 + v60);
      v60 += 8;
    }

    while (v60 != 24);
    v65 = v57 / v34 - v58;
    v114 = -v64;
    if (v65 >= 0.0)
    {
      v68 = 0;
      v69 = 0.0;
      do
      {
        v69 = v69 + *(&v112 + v68) * *(*(a1 + 40) + v68);
        v68 += 8;
      }

      while (v68 != 24);
      v66 = v69 < v64;
    }

    else
    {
      v66 = 1;
    }

    if (*(a4 + 72) == 1)
    {
      if (*(a4 + 64) <= a3 && v65 < *(a4 + 56))
      {
        *&v104[8] = *v63;
        v70 = *&v104[8];
        v71 = *(v63 + 2);
        *&v104[24] = v71;
        *a4 = v110;
        *(a4 + 16) = v111;
        *(a4 + 24) = v70;
        *(a4 + 40) = v71;
        *(a4 + 48) = v66;
        *(a4 + 56) = v65;
        *(a4 + 64) = a3;
      }
    }

    else
    {
      *v104 = v111;
      v103 = v110;
      *&v104[8] = *v63;
      *&v104[24] = *(v63 + 2);
      v72 = *v104;
      v73 = *&v104[16];
      *a4 = v110;
      *(a4 + 16) = v72;
      *(a4 + 32) = v73;
      *(a4 + 48) = v66;
      *(a4 + 56) = v65;
      *(a4 + 64) = a3;
      *(a4 + 72) = 1;
    }

    if (**a1 == 1)
    {
      v74 = *(a1 + 80);
      v103 = *v94;
      *v104 = *&v94[16];
      *&v104[16] = *&v94[32];
      v105 = v110;
      v106 = v111;
      v107 = 1;
      std::vector<md::RaycastDebug::RayHit>::push_back[abi:nn200100](v74, &v103);
    }
  }

  else if (**a1 == 1)
  {
    v67 = *(a1 + 80);
    v103 = *v94;
    *v104 = *&v94[16];
    *&v104[16] = *&v94[32];
    LOBYTE(v105) = 0;
    v107 = 0;
    std::vector<md::RaycastDebug::RayHit>::push_back[abi:nn200100](v67, &v103);
  }

  v75 = *a2;
  if (v75[3] >= *v75 && v75[4] >= v75[1] && v75[5] >= v75[2])
  {
    v76 = v34 * *(*(a1 + 72) + 24);
    v103 = v78;
    *v104 = v79;
    *&v104[8] = v76;
    operator new();
  }

  if (v116 == 1)
  {
    std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](v115);
  }
}

void sub_1B2AF2FBC(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](v1 - 240);
  std::__function::__value_func<BOOL ()(gm::Box<double,3> const&)>::~__value_func[abi:nn200100](v1 - 208);
  if (*(v1 - 144) == 1)
  {
    std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](v1 - 176);
  }

  _Unwind_Resume(a1);
}

__n128 gdc::Tiled::matrixForCameraType(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 312;
  if ((a3 - 1) < 3)
  {
    v3 = 184;
  }

  v4 = a2 + v3;
  v5 = *(v4 + 80);
  *(a1 + 64) = *(v4 + 64);
  *(a1 + 80) = v5;
  v6 = *(v4 + 112);
  *(a1 + 96) = *(v4 + 96);
  *(a1 + 112) = v6;
  v7 = *(v4 + 16);
  *a1 = *v4;
  *(a1 + 16) = v7;
  result = *(v4 + 32);
  v9 = *(v4 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

BOOL gm::Ray<double,3>::segmentIntersectsBox(double *a1, double *a2, double *a3, double *a4, double a5, double a6)
{
  v6 = 0;
  *a3 = 0.0;
  *a4 = a6;
  v7 = -3;
  do
  {
    v8 = a1[3];
    if (fabs(v8) >= a5)
    {
      v9 = 1.0 / v8;
      v10 = (*a2 - *a1) * v9;
      v11 = (a2[3] - *a1) * v9;
      *a3 = fmax(*a3, fmin(v10, v11));
      v12 = fmin(fmax(v10, v11), *a4);
      *a4 = v12;
      if (*a3 > v12)
      {
        return v6;
      }

      goto LABEL_7;
    }

    if (*a1 < *a2 || *a1 > a2[3])
    {
      break;
    }

LABEL_7:
    v6 = (v7 + 3) > 1;
    ++a2;
    ++a1;
  }

  while (!__CFADD__(v7++, 1));
  return v6;
}

uint64_t gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::collide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v12[6] = *MEMORY[0x1E69E9840];
  do
  {
    *&v12[v6] = *(a1 + 4 * v6);
    ++v6;
  }

  while (v6 != 3);
  do
  {
    *&v12[v6] = *(a1 + 4 * v6);
    ++v6;
  }

  while (v6 != 6);
  v7 = *(a2 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  if ((*(*v7 + 48))(v7, v12))
  {
    v8 = *(v5 + 32);
    v9 = *(v5 + 24);
    if (v9 == v8)
    {
      v11 = 0;
      v12[0] = &unk_1F2A44270;
      v12[1] = &v11;
      v12[2] = a3;
      v12[3] = v12;
      gdc::CollisionMeshNode<double,float>::_forEachTriangle(v5 + 48, v12);
      std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](v12);
      LOBYTE(v5) = v11;
    }

    else
    {
      LODWORD(v5) = 0;
      do
      {
        LODWORD(v5) = v5 | gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::collide(v9, a2, a3);
        v9 += 168;
      }

      while (v9 != v8);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

void sub_1B2AF3268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(gm::Box<double,3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *std::__tree<gdc::LayerDataWithWorld>::__emplace_hint_unique_key_args<gdc::LayerDataWithWorld,gdc::LayerDataWithWorld const&>(void *a1, uint64_t *a2, unint64_t a3, signed __int8 a4)
{
  v4 = a2;
  v5 = a1 + 1;
  if (a1 + 1 == a2 || ((v6 = *(a2 + 48), v7 = v6, v8 = a2[4], v6 != a4) ? (v9 = v6 > a4) : (v9 = v8 > a3), v9))
  {
    v10 = *a2;
    if (*a1 == a2)
    {
      v12 = a2;
LABEL_23:
      if (v10)
      {
        v34 = v12;
        v18 = v12 + 1;
      }

      else
      {
        v34 = a2;
        v18 = a2;
      }

      goto LABEL_25;
    }

    if (v10)
    {
      v11 = *a2;
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v19 = a2;
      do
      {
        v12 = v19[2];
        v20 = *v12 == v19;
        v19 = v12;
      }

      while (v20);
    }

    v21 = *(v12 + 48) < a4;
    if (*(v12 + 48) == a4)
    {
      v21 = v12[4] < a3;
    }

    if (v21)
    {
      goto LABEL_23;
    }

    v23 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v24 = v23;
          v25 = *(v23 + 48);
          v26 = v25;
          v27 = v24[4];
          if (!(v25 == a4 ? v27 > a3 : v25 > a4))
          {
            break;
          }

          v23 = *v24;
          v5 = v24;
          if (!*v24)
          {
            goto LABEL_41;
          }
        }

        v29 = v26;
        v30 = v26 < a4;
        v31 = v27 < a3;
        if (v29 == a4)
        {
          v30 = v31;
        }

        if (!v30)
        {
          break;
        }

        v5 = v24 + 1;
        v23 = v24[1];
      }

      while (v23);
    }

    else
    {
      v24 = a1 + 1;
    }

LABEL_41:
    v34 = v24;
    v18 = v5;
  }

  else
  {
    v13 = v7;
    v14 = v7 < a4;
    v15 = v8 < a3;
    if (v13 == a4)
    {
      v14 = v15;
    }

    if (!v14)
    {
      return v4;
    }

    v16 = a2[1];
    if (v16)
    {
      v17 = a2[1];
      do
      {
        v18 = v17;
        v17 = *v17;
      }

      while (v17);
    }

    else
    {
      v32 = a2;
      do
      {
        v18 = v32[2];
        v20 = *v18 == v32;
        v32 = v18;
      }

      while (!v20);
    }

    if (v18 == v5)
    {
      goto LABEL_50;
    }

    v33 = *(v18 + 48) > a4;
    if (*(v18 + 48) == a4)
    {
      v33 = v18[4] > a3;
    }

    if (v33)
    {
LABEL_50:
      if (!v16)
      {
        v34 = a2;
LABEL_26:
        operator new();
      }

      v34 = v18;
    }

    else
    {
      v18 = std::__tree<gdc::LayerDataWithWorld>::__find_equal<gdc::LayerDataWithWorld>(a1, &v34, a3, a4);
    }
  }

LABEL_25:
  v4 = *v18;
  if (!*v18)
  {
    goto LABEL_26;
  }

  return v4;
}

uint64_t **std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::_DetachedTreeCache::_DetachedTreeCache[abi:nn200100](uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  v3 = *a2;
  v4 = a2[1];
  *a2 = (a2 + 1);
  *(v4 + 16) = 0;
  a2[2] = 0;
  a2[1] = 0;
  if (*(v3 + 8))
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = v3;
  }

  a1[1] = v5;
  a1[2] = v5;
  if (v5)
  {
    a1[1] = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v5);
  }

  return a1;
}

uint64_t std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](uint64_t a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1F258;

  return a1;
}

uint64_t md::Logic<md::DisplayLinkVerificationLogic,md::DisplayLinkVerificationContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x42BE82C40F9A8F80)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7[0] = md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<md::CameraContext>>::resolveDependencies(*(a2 + 8));
      v7[1] = v6;
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

void md::DisplayLinkVerificationLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = +[VKDebugSettings sharedSettings];
  v7 = [v6 layoutContinuously];

  if (v7)
  {
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  else
  {
    v8 = *(a3 + 8);
    if (v8)
    {
      v9 = gdc::Camera::cameraFrame(v8);
      v10 = CACurrentMediaTime();
      if (*(a1 + 160) == v9[4] && *(a1 + 168) == v9[5] && *(a1 + 176) == v9[6] && *(a1 + 152) == v9[3] && *(a1 + 128) == *v9 && *(a1 + 136) == v9[1] && *(a1 + 144) == v9[2] && (v21 = *(a1 + 192), md::LayoutContext::frameState(a2), v21 == *(v22 + 120)))
      {
        v23 = v10 - *(a1 + 184);
        if (v23 >= 30.0)
        {
          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v24 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v26 = 134218754;
            *v27 = v23;
            *&v27[8] = 2080;
            v28 = "false";
            v29 = 2080;
            v30 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/DisplayLinkVerificationLogic.mm";
            v31 = 1024;
            v32 = 65;
            _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "DisplayLink has been running for %f seconds with the camera frame moving: Assertion with expression - %s : Failed in file - %s line - %i", &v26, 0x26u);
          }

          v25 = gdc::ServiceLocator::resolve<md::FaultNotificationService>(**(a1 + 120), *(*(a1 + 120) + 8));
          (**v25)(v25, 1, "");
          *(a1 + 184) = v10;
        }
      }

      else
      {
        *(a1 + 184) = v10;
        v11 = *(a1 + 192);
        md::LayoutContext::frameState(a2);
        if (v11 != *(v12 + 120))
        {
          v13 = GEOGetVectorKitDisplayLinkVerificationLogicLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = *(a1 + 192);
            md::LayoutContext::frameState(a2);
            v16 = *(v15 + 120);
            v26 = 67109376;
            *v27 = v14;
            *&v27[4] = 1024;
            *&v27[6] = v16;
            _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_INFO, "DisplayLinkStamp changed %u -> %u", &v26, 0xEu);
          }
        }
      }

      md::LayoutContext::frameState(a2);
      *(a1 + 192) = *(v17 + 120);
      v18 = *v9;
      v19 = *(v9 + 1);
      v20 = *(v9 + 2);
      *(a1 + 176) = v9[6];
      *(a1 + 144) = v19;
      *(a1 + 160) = v20;
      *(a1 + 128) = v18;
    }
  }
}

uint64_t md::SceneStateManager::hasFailedTiles(md::SceneStateManager *this)
{
  v1 = *(this + 23);
  v2 = *(this + 24);
  if (v1 == v2)
  {
LABEL_12:
    v6 = *(this + 26);
    v7 = *(this + 27);
    if (v6 == v7)
    {
      return 0;
    }

    else
    {
      v8 = *(this + 14);
      v9 = *(this + 15);
      do
      {
        v10 = v9;
        if (v8 != v9)
        {
          v10 = v8;
          while (*v6 != *v10)
          {
            v10 += 56;
            if (v10 == v9)
            {
              v10 = v9;
              break;
            }
          }
        }

        result = *(v10 + 10);
        if (result)
        {
          break;
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  else
  {
    v3 = *(this + 15);
    while (1)
    {
      v4 = *(this + 15);
      if (*(this + 14) != v3)
      {
        v4 = *(this + 14);
        while (*v1 != *v4)
        {
          v4 += 56;
          if (v4 == v3)
          {
            v4 = *(this + 15);
            break;
          }
        }
      }

      if (v4[5])
      {
        return 1;
      }

      if (++v1 == v2)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

id GEOGetVectorKitDisplayLinkVerificationLogicLog(void)
{
  if (GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::onceToken, &__block_literal_global_3268);
  }

  v1 = GEOGetVectorKitDisplayLinkVerificationLogicLog(void)::log;

  return v1;
}

BOOL gm::Box<double,2>::operator==(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[2] == a2[2] && a1[3] == a2[3];
}

double md::NavCamera::desiredPuckScreenPoint(float64x2_t *a1, float64x2_t a2, float64x2_t a3, float a4, float a5, float32x2_t a6, float32x2_t a7, float64x2_t a8, double a9)
{
  v9.f64[0] = a4;
  v10 = a5;
  v11.f64[0] = v9.f64[0];
  v11.f64[1] = 1.0 - v10;
  v12 = vdupq_lane_s64(*&a9, 0);
  v13 = vaddq_f64(v12, a2);
  v14 = vsubq_f64(a3, v12);
  v15 = vmaxnmq_f64(v14, a2);
  v16 = vminnmq_f64(vmaxnmq_f64(vmlaq_f64(a2, v11, vsubq_f64(a3, a2)), v13), v14);
  v17 = a1[1];
  v11.f64[0] = a1->f64[0];
  v11.f64[1] = a1[1].f64[1];
  v17.f64[1] = a1->f64[1];
  v9.f64[1] = v10 + -1.0;
  *&result = *&vminnmq_f64(vmaxnmq_f64(vminnmq_f64(vmaxnmq_f64(vmlaq_f64(vaddq_f64(vsubq_f64(v16, *a1), a8), v9, vsubq_f64(v11, v17)), vsubq_f64(v16, vcvtq_f64_f32(a6))), vaddq_f64(v16, vcvtq_f64_f32(a7))), vminnmq_f64(v13, a3)), v15);
  return result;
}

void sub_1B2AF4274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

long double md::MapDataAccess::_mercatorGroundCoordinateForScreenPoint(double *a1, uint64_t a2, double a3)
{
  v13[0] = 0;
  v13[1] = 0;
  v13[2] = 0x3FF0000000000000;
  *&v13[3] = a3 * -0.0000000249532021;
  v4 = gm::PlaneUtils::rayPlaneIntersectionOrPoint<double>(v13, a2, a2);
  v6 = v5 * 40075017.0;
  v7 = v4 * 6.28318531;
  v9 = exp(v8 * 6.28318531 + -3.14159265);
  v10 = atan(v9) * 2.0 + -1.57079633;
  v11 = fmod(v7, 6.28318531);
  result = fmod(v11 + 6.28318531, 6.28318531) + -3.14159265;
  *a1 = v10;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

void gdc::ViewDataAccess::screenPointForCoordinate(double *a1, uint64_t a2, double *a3)
{
  if (a1[47] * a1[46] != 0.0)
  {
    if (*a1 - 1 >= 3)
    {
      if (!*a1)
      {
        v18 = *(a2 + 8);
        v10 = tan(*a2 * 0.5 + 0.785398163);
        v11 = log(v10);
        v12.f64[0] = v18.f64[0];
        v12.f64[1] = v11;
        __asm { FMOV            V2.2D, #0.5 }

        v19 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v12);
        v20 = vmuld_lane_f64(0.0000000249532021, v18, 1);
      }
    }

    else
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 16);
      v6 = __sincos_stret(*a2);
      v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
      v8 = (v7 + v5) * v6.__cosval;
      v9 = __sincos_stret(v4);
      v19.f64[0] = v8 * v9.__cosval;
      v19.f64[1] = v8 * v9.__sinval;
      v20 = (v5 + v7 * 0.99330562) * v6.__sinval;
    }

    gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(a3, &v19);
  }
}

uint64_t gdc::Zoom::getZAdjustment(gdc::Zoom *this, int a2)
{
  v2 = 0;
  if (this && a2)
  {
    if (a2 >= this)
    {
      v2 = 0;
    }

    else
    {
      LODWORD(v2) = 0;
      do
      {
        v2 = (v2 + 1);
        a2 *= 2;
      }

      while (a2 < this);
    }

    if (a2 > this)
    {
      do
      {
        v2 = (v2 - 1);
        v3 = a2 <= 2 * this;
        LODWORD(this) = 2 * this;
      }

      while (!v3);
    }
  }

  return v2;
}

void std::__function::__func<gdc::ResourceManager::updateExpired(long long)::$_0,std::allocator<gdc::ResourceManager::updateExpired(long long)::$_0>,void ()(gdc::ResourceKey const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v4 = *(v2 + 56);
  v3 = *(v2 + 64);
  if (v4 != v3)
  {
    while (*(a2 + 2) != *v4)
    {
      v4 += 3;
      if (v4 == v3)
      {
        return;
      }
    }

    if (v4 != v3)
    {
      gdc::ResourceStore::resource(&v15, v4[1], a2);
      v7 = v15;
      if (v15)
      {
        v8 = *(v15 + 112);
        if (v8 >= 1 && *(v15 + 96) + v8 < *(a1 + 16))
        {
          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }

          v9 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v10 = (*(**(v2 + 448) + 16))(*(v2 + 448));
            gdc::ResourceKey::keysInt32Str(&__p, a2);
            v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315394;
            v18 = v10;
            v19 = 2080;
            v20 = v11;
            _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_DEBUG, "%s Requested resource expired: %s", buf, 0x16u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          gdc::ResourceStore::erase(v4[1], a2);
          v12 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(v2 + 312) + 8), a2);
          if (v12)
          {
            *(v12 + 28) = 0;
          }

          v13 = geo::linear_map<unsigned short,gdc::ResourceFetcher *,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,gdc::ResourceFetcher *>>,std::vector<std::pair<unsigned short,gdc::ResourceFetcher *>>>::operator[]((v2 + 32), *(v7 + 2));
          (*(**v13 + 48))(*v13, a2);
        }
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }
  }
}

void sub_1B2AF5E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::vector<geo::Coordinate3D<geo::Radians,double>>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    __p[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v9);
    }

    v10 = 24 * v6;
    __p[0] = 0;
    __p[1] = v10;
    *v10 = *a2;
    *(v10 + 8) = *(a2 + 8);
    __p[2] = (24 * v6 + 24);
    __p[3] = 0;
    std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(a1, __p);
    v5 = a1[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    v5 = v4 + 24;
  }

  a1[1] = v5;
}

char *std::vector<gm::Matrix<float,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<float,2,1> const*,gm::Matrix<float,2,1> const*>(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gdc::Entity>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5++ + 1);
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5++ + 1);
        result += 8;
      }

      while (v5 != v12);
    }

    while (v12 != a3)
    {
      v13 = *v12++;
      *v11 = v13;
      v11 += 8;
    }

    a1[1] = v11;
  }

  return result;
}

float md::MapNavLabeler::currentRoadSignOffset(id *this)
{
  if (((*(*this + 45))(this) & 1) != 0 || *(*(this[3] + 42) + 163) << 16 == 393216 || (v3 = (*(*this + 48))(this), v2 = 0.0, v3))
  {
    [this[7] currentRoadSignPixelHeight];
    *&v2 = *&v2 / *(this[3] + 44);
  }

  return *&v2;
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataWithWorld const,std::shared_ptr<gdc::SubtileClipMask>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataWithWorld const,std::shared_ptr<gdc::SubtileClipMask>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<gdc::SubtileClipMask>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::vector<geo::QuadTile>::emplace_back<geo::QuadTile>(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<geo::QuadTile>::__emplace_back_slow_path<geo::QuadTile const&>(a1, a2);
  }

  else
  {
    *(v3 + 24) = 0;
    *(v3 + 4) = *(a2 + 4);
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::emplace_back<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>> const&>(uint64_t *a1, _WORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__emplace_back_slow_path<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>> const&>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::unordered_set((v3 + 4), (a2 + 4));
    result = (v3 + 24);
    a1[1] = (v3 + 24);
  }

  a1[1] = result;
  return result;
}

BOOL std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(void *a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_17;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 104);
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v10 = *(v9 + 1);
    if (v10 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_17;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  result = gdc::LayerDataRequestKey::operator==(v9 + 16, a2);
  if (!result)
  {
    goto LABEL_16;
  }

  return result;
}

void gdc::LayerDataSource::createLayerDataRequests(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 25);
  v11[0] = 0;
  v11[1] = 0;
  for (i = *(a2 + 16); i; i = *i)
  {
    v10 = 0;
    if (gdc::LayerDataSource::shouldCreateLayerDataRequest(a1, (i + 16), a3, &v10))
    {
      v8 = a1[8] + v11[i[16]];
      if (v8 < (*(*a1 + 128))(a1))
      {
        ++v11[i[16]];
        ++a1[36];
        operator new();
      }
    }

    gdc::LayerDataSource::_updateRequestTimestamp(a1, i + 16, &v12);
  }

  gdc::LayerDataSource::createLayerDataRequests(a1, a1 + 25, a3, a4);
}

uint64_t **gdc::LayerDataSource::_updateRequestTimestamp(void *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(a1 + 5, a2);
  if (v6)
  {
    v6[16][25] = *a3;
  }

  v7 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(a1 + 10, a2);
  if (v7)
  {
    v7[16][25] = *a3;
  }

  result = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(a1 + 15, a2);
  if (result)
  {
    result[16][25] = *a3;
  }

  return result;
}

uint64_t std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(a1, (i + 2));
  }

  return a1;
}

BOOL std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile>(void *a1, unsigned __int8 *a2)
{
  if (a2[24])
  {
    v3 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v4 = (*(a2 + 1) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
    v5 = (*(a2 + 2) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
    *(a2 + 2) = v5;
    a2[24] = 0;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_21;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = *(v11 + 1);
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_14:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  result = std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v11 + 16, a2);
  if (!result)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(std::bitset<82ul> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](result, v2);
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataWithWorld const,std::shared_ptr<gdc::SubtileClipMask>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *gdc::SubtileClipMask::addSubTile(void *this, unint64_t a2, unint64_t a3)
{
  v3 = this[3];
  if (this[4] != v3 * v3 && v3 > a2 && v3 > a3)
  {
    v6 = a2 + v3 * a3;
    v7 = v6 >> 6;
    v8 = 1 << v6;
    v9 = *(*this + 8 * v7);
    if ((v9 & v8) == 0)
    {
      *(*this + 8 * v7) = v9 | v8;
      ++this[4];
    }
  }

  return this;
}

void md::IdentifiedGEOResourceFetcher::fetchResources(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v92 = *MEMORY[0x1E69E9840];
  v45 = a4;
  v82 = 0;
  v49 = a1;
  if ((geo::_retain_ptr<GEOActiveTileSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(a1 + 704), &v82) & 1) == 0)
  {
    v6 = *(a1 + 16);
    v7 = 7;
    if ((v6 & 1) == 0)
    {
      v7 = 3;
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      v43 = (4 * v6) & 8 | (((v6 >> 2) & 1) << 12) | v7;
      do
      {
        v74 = v8[2];
        v75 = v79;
        v76 = v79;
        v77 = v79;
        v78 = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v75, v8[3], v8[4]);
        v80 = v8[11];
        v81 = *(v8 + 6);
        v48 = v8[14];
        *(&v73 + 1) = 0;
        *&v73 = 0;
        v9 = v49[88];
        *&v73 = (*(*v49 + 18))(v49, v9, &v74);
        *(&v73 + 1) = v10;

        (*(*v49 + 19))(v71, v49, &v74);
        gdc::ResourceFetcher::willStartLoading(v49);
        switch(WORD1(v74))
        {
          case 0x2Au:
            goto LABEL_9;
          case 0x24u:
            if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
            }

            v40 = GEOGetVectorKitResourceLoadingLog_log;
            v12 = v40;
            v41 = v81;
            if ((v81 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
            {
              *buf = 134218752;
              v85 = *(&v73 + 1);
              v86 = 1024;
              v87 = *(&v73 + 10);
              v88 = 1024;
              *v89 = v74;
              *&v89[4] = 2048;
              *&v89[6] = *(&v81 + 1);
              v14 = 1;
              _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v41, "ResourceFetch", "key=%llu type=%d rt=%d parent_signpost=%llu", buf, 0x22u);
            }

            else
            {
              v14 = 1;
            }

            v15 = @"mtl";
            break;
          case 0x1Cu:
LABEL_9:
            if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
            }

            v11 = GEOGetVectorKitResourceLoadingLog_log;
            v12 = v11;
            v13 = v81;
            if ((v81 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
            {
              *buf = 134218752;
              v85 = *(&v73 + 1);
              v86 = 1024;
              v87 = *(&v73 + 9);
              v88 = 1024;
              *v89 = *(&v73 + 10);
              *&v89[4] = 2048;
              *&v89[6] = *(&v81 + 1);
              v14 = 1;
              _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "ResourceFetch", "key=%llu@%d type=%d parent_signpost=%llu", buf, 0x22u);
            }

            else
            {
              v14 = 1;
            }

            v15 = @"ast";
            break;
          default:
            if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
            }

            v12 = GEOGetVectorKitResourceLoadingLog_log;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219010;
              v85 = *(&v73 + 1);
              v86 = 1024;
              v87 = *(&v73 + 10);
              v88 = 2080;
              *v89 = "false";
              *&v89[8] = 2080;
              *&v89[10] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/IdentifiedGEOResourceFetcher.mm";
              v90 = 1024;
              v91 = 84;
              _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_ERROR, "Unexpected resource type - key=%llu type=%d: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x2Cu);
            }

            v14 = 0;
            v15 = 0;
            break;
        }

        v16 = v74;
        v17 = v74 == 1;
        v18 = +[VKDebugSettings sharedSettings];
        v19 = [v18 daVinciResourceOverrideEnabled];

        if (v19)
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", *(&v73 + 1)];
          v21 = [v20 stringByAppendingPathExtension:v15];

          v22 = [MEMORY[0x1E69A2478] modernManager];
          v23 = [v22 pathForResourceWithName:v21];

          v24 = [MEMORY[0x1E696AC08] defaultManager];
          LODWORD(v22) = [v24 fileExistsAtPath:v23];

          if ((v14 & v22) == 1)
          {
            v25 = GEOResourceDevResourcesPath();
            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", *(&v73 + 1)];
            v27 = [v25 stringByAppendingPathComponent:v26];
            v28 = [v27 stringByAppendingPathExtension:v15];

            v62 = v49;
            v63 = v74;
            v64[0] = v65;
            v64[1] = v65;
            v64[2] = v65;
            v64[3] = 32;
            geo::small_vector_base<unsigned char>::append<unsigned char const*>(v64, v75, v76);
            v66 = v81;
            v65[4] = v80;
            v67 = v48;
            v68 = v73;
            v69 = v28;
            v70 = v45;
            std::function<void ()(void)>::function<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,void>(v83);
          }
        }

        v29 = v17;
        [MEMORY[0x1E69A2610] modernLoader];
        v47 = v46 = v8;
        v30 = 76;
        if (v16 == 1)
        {
          v30 = 79;
        }

        v31 = v49[v30];
        md::GEOResourceFetcher::willLoadGEOKey(v49, &v73, v31, &v74);
        if (v72)
        {
          v32 = v71;
        }

        else
        {
          v32 = 0;
        }

        v33 = HIDWORD(v74);
        if (v16 == 1)
        {
          v34 = 65;
        }

        else
        {
          v34 = v43;
        }

        v35 = qos_class_self();
        v36 = v81;
        v37 = v49[82];
        v38 = *(a3 + 16);
        md::LabelExternalPointFeature::incident(v38);
        objc_claimAutoreleasedReturnValue();
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3321888768;
        v50[2] = ___ZN2md28IdentifiedGEOResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS3_15ResourceKeyHashENS1_8equal_toIS4_EENS1_9allocatorINS1_4pairIKS4_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
        v50[3] = &unk_1F2A2FAA8;
        v53 = v49;
        v54 = v74;
        v55[0] = v58;
        v55[1] = v58;
        v56 = v58;
        v57 = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>(v55, v75, v76);
        v58[4] = v80;
        v59 = v81;
        v39 = v31;
        v51 = v39;
        v60 = v48;
        v61 = v29;
        v52 = v45;
        LODWORD(v42) = v35;
        [v47 loadKey:&v73 additionalInfo:v32 priority:v33 forClient:v39 options:v34 reason:1 qos:v42 signpostID:v36 auditToken:v37 callbackQ:v38 beginNetwork:0 callback:v50];

        if (v55[0] != v56)
        {
          free(v55[0]);
        }

        if (v75 != v77)
        {
          free(v75);
        }

        v8 = *v8;
      }

      while (*v46);
    }
  }
}

uint64_t geo::_retain_ptr<GEOActiveTileSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

double gdc::LayerDataWithWorld::LayerDataWithWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a4 + 8) / (1 << *(a4 + 1));
  *(a1 + 16) = vcvtmd_s64_f64(result);
  return result;
}

void *std::__tree<gdc::LayerDataWithWorld>::__find_equal<gdc::LayerDataWithWorld>(uint64_t a1, void *a2, unint64_t a3, unsigned __int8 a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 48);
        v9 = *(v5 + 48);
        v10 = v8 > a4;
        v11 = v7[4];
        if (v9 == a4)
        {
          v10 = v11 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      v12 = v11 < a3;
      if (v9 == a4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < a4;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_14:
  *a2 = v7;
  return result;
}

BOOL std::__map_value_compare<geo::MortonTileIndex,std::__value_type<geo::MortonTileIndex,std::bitset<82ul>>,geo::MortonTileIndexCompare,true>::operator()[abi:nn200100](unint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 - v3;
  if (v2 < v3)
  {
    v5 = *(a1 + 9);
    if (v5 == BYTE1(*(a2 + 8)))
    {
      return *a1 <= *a2 >> (2 * (v3 - v2));
    }

    return v5 < BYTE1(*(a2 + 8));
  }

  if (v2 > v3)
  {
    v7 = *(a2 + 9);
    if (v7 != BYTE1(a1[1]))
    {
      return v7 > BYTE1(a1[1]);
    }

    v8 = *a1 >> (2 * v4);
    return v8 < *a2;
  }

  v10 = *(a1 + 9);
  v11 = *(a2 + 9);
  if (v10 == v11)
  {
    v8 = *a1;
    return v8 < *a2;
  }

  return v10 < v11;
}

uint64_t std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

unsigned __int16 *geo::linear_map<unsigned short,std::set<gdc::LayerDataWithWorld>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>,std::vector<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>>::operator[](void *a1, unsigned __int16 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 16;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v28[0] = 0;
    v28[1] = 0;
    v27 = v28;
    if (v3 == v4)
    {
      goto LABEL_14;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 16;
      if (v5 == v4)
      {
        goto LABEL_14;
      }
    }

    if (v5 == v4)
    {
LABEL_14:
      v7 = a1[2];
      if (v4 >= v7)
      {
        v9 = (v4 - v3) >> 5;
        if ((v9 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v10 = v7 - v3;
        v11 = v10 >> 4;
        if (v10 >> 4 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFE0)
        {
          v12 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        v32 = a1;
        if (v12)
        {
          if (!(v12 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v29 = 0;
        v30 = (32 * v9);
        v31 = (32 * v9);
        *v30 = a2;
        std::set<gdc::LayerDataWithWorld>::set[abi:nn200100]((32 * v9 + 8), &v27);
        *&v31 = v31 + 32;
        v14 = *a1;
        v13 = a1[1];
        v15 = v30 + *a1 - v13;
        if (*a1 != v13)
        {
          v16 = 0;
          do
          {
            v17 = &v15[v16 * 2];
            v18 = v14[v16];
            *(v17 + 1) = *&v14[v16 + 4];
            v19 = &v14[v16 + 8];
            v20 = *v19;
            *v17 = v18;
            *&v15[v16 * 2 + 16] = v20;
            v21 = &v15[v16 * 2 + 16];
            v22 = *&v14[v16 + 12];
            *(v17 + 3) = v22;
            if (v22)
            {
              *(v20 + 16) = v21;
              *&v14[v16 + 4] = v19;
              *v19 = 0;
              *&v14[v16 + 12] = 0;
            }

            else
            {
              *(v17 + 1) = v21;
            }

            v16 += 16;
          }

          while (&v14[v16] != v13);
          do
          {
            std::__tree<gdc::LayerDataWithWorld>::destroy(*(v14 + 2));
            v14 += 16;
          }

          while (v14 != v13);
        }

        v23 = *a1;
        *a1 = v15;
        v24 = a1[2];
        v26 = v31;
        *(a1 + 1) = v31;
        *&v31 = v23;
        *(&v31 + 1) = v24;
        v29 = v23;
        v30 = v23;
        std::__split_buffer<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>::~__split_buffer(&v29);
        v8 = v26;
      }

      else
      {
        *v4 = a2;
        std::set<gdc::LayerDataWithWorld>::set[abi:nn200100]((v4 + 8), &v27);
        v8 = v4 + 32;
        a1[1] = v4 + 32;
      }

      a1[1] = v8;
      v5 = (v8 - 32);
      v6 = v28[0];
    }

    else
    {
      v6 = 0;
    }

    std::__tree<gdc::LayerDataWithWorld>::destroy(v6);
    std::__tree<gdc::LayerDataWithWorld>::destroy(0);
  }

  return v5 + 4;
}

void sub_1B2AF9AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  std::__tree<gdc::LayerDataWithWorld>::destroy(a16);
  std::__tree<gdc::LayerDataWithWorld>::destroy(a12);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<md::LayerDataIdentWithWorld>::__find_equal<md::LayerDataIdentWithWorld>(uint64_t a1, void *a2, unsigned int a3, unsigned __int8 a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 32);
        v9 = *(v5 + 32);
        v10 = v8 > a4;
        v11 = *(v7 + 7);
        if (v9 == a4)
        {
          v10 = v11 > a3;
        }

        if (!v10)
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      v12 = v11 < a3;
      if (v9 == a4)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9 < a4;
      }

      if (!v13)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_14:
  *a2 = v7;
  return result;
}

uint64_t md::SceneQueryLogic::updateNavigationFlexBucketsForZoom(uint64_t a1, unsigned int a2, uint64_t a3, std::__shared_weak_count *a4, int a5)
{
  v5 = *(a1 + 368) == a2 && a5 == 0;
  if (!v5)
  {
    *(a1 + 368) = a2;
    v102 = 0;
    v103 = 0;
    v101 = &v102;
    if (a4)
    {
      atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v105, a3, a4);
    if (a4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a4);
    }

    if ((v108 & 1) == 0)
    {
LABEL_100:
      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      if (v103 == *(a1 + 288))
      {
        v73 = v101;
        if (v101 == &v102)
        {
LABEL_121:
          v23 = 0;
LABEL_146:
          std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v102);
          return v23;
        }

        v74 = *(a1 + 272);
        while (*(v73 + 28) == *(v74 + 28) && *(v73 + 8) == *(v74 + 8) && *(v73 + 9) == *(v74 + 9))
        {
          v75 = v73[1];
          v76 = v73;
          if (v75)
          {
            do
            {
              v73 = v75;
              v75 = *v75;
            }

            while (v75);
          }

          else
          {
            do
            {
              v73 = v76[2];
              v5 = *v73 == v76;
              v76 = v73;
            }

            while (!v5);
          }

          v77 = v74[1];
          if (v77)
          {
            do
            {
              v78 = v77;
              v77 = *v77;
            }

            while (v77);
          }

          else
          {
            do
            {
              v78 = v74[2];
              v5 = *v78 == v74;
              v74 = v78;
            }

            while (!v5);
          }

          v74 = v78;
          if (v73 == &v102)
          {
            goto LABEL_121;
          }
        }
      }

      v79 = (a1 + 280);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 280));
      v80 = v102;
      *(a1 + 272) = v101;
      *(a1 + 280) = v80;
      v81 = v103;
      *(a1 + 288) = v103;
      if (v81)
      {
        v80[2] = v79;
        v101 = &v102;
        v102 = 0;
        v103 = 0;
        v82 = *(a1 + 272);
        v83 = *(a1 + 248);
        *(a1 + 256) = v83;
        if (v82 != v79)
        {
          do
          {
            v84 = *(a1 + 264);
            if (v83 >= v84)
            {
              v85 = *(a1 + 248);
              v86 = v83 - v85;
              v87 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v85) >> 2);
              v88 = v87 + 1;
              if (v87 + 1 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v89 = 0xAAAAAAAAAAAAAAABLL * ((v84 - v85) >> 2);
              if (2 * v89 > v88)
              {
                v88 = 2 * v89;
              }

              if (v89 >= 0xAAAAAAAAAAAAAAALL)
              {
                v90 = 0x1555555555555555;
              }

              else
              {
                v90 = v88;
              }

              if (v90)
              {
                if (v90 <= 0x1555555555555555)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v91 = 12 * v87;
              *v91 = *(v82 + 28);
              *(v91 + 4) = v82[4];
              v83 = 12 * v87 + 12;
              v92 = v91 - v86;
              memcpy((v91 - v86), v85, v86);
              *(a1 + 248) = v92;
              *(a1 + 256) = v83;
              *(a1 + 264) = 0;
              if (v85)
              {
                operator delete(v85);
              }
            }

            else
            {
              *v83 = *(v82 + 28);
              *(v83 + 4) = v82[4];
              v83 += 12;
            }

            *(a1 + 256) = v83;
            v93 = v82[1];
            if (v93)
            {
              do
              {
                v94 = v93;
                v93 = *v93;
              }

              while (v93);
            }

            else
            {
              do
              {
                v94 = v82[2];
                v5 = *v94 == v82;
                v82 = v94;
              }

              while (!v5);
            }

            v82 = v94;
          }

          while (v94 != v79);
        }
      }

      else
      {
        *(a1 + 272) = v79;
        *(a1 + 256) = *(a1 + 248);
      }

      v23 = 1;
      goto LABEL_146;
    }

    v9 = v105[3];
    if (a2 >= 0x17)
    {
      v10 = 23;
    }

    else
    {
      v10 = a2;
    }

    v11 = *v9;
    if (*v9)
    {
      v12 = *v11;
      v13 = *v11 == 1.0;
      if (*(v9 + 10) == 1 && v12 != 0.0 && v12 != 1.0)
      {
LABEL_21:
        v16 = *(v9 + 16);
        if (v16)
        {
          v17 = *(v16 + 72);
          if (v17)
          {
            v18 = *v17 + 120 * *(v17 + v10 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v18, 0x18Au) != *(v18 + 12))
            {
              goto LABEL_35;
            }
          }

          if (*(v9 + 56))
          {
            v19 = *(v9 + 48);
            v20 = 8 * *(v9 + 56);
            while (1)
            {
              v21 = *(*v19 + 72);
              if (v21)
              {
                v22 = *v21 + 120 * *(v21 + v10 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, 0x18Au) != *(v22 + 12))
                {
                  goto LABEL_35;
                }
              }

              v19 += 8;
              v15 = 1;
              v20 -= 8;
              if (!v20)
              {
                goto LABEL_32;
              }
            }
          }
        }

        v15 = 1;
LABEL_32:
        v24 = *(v9 + 16 * v15 + 16);
        if (!v24)
        {
          goto LABEL_57;
        }

        v25 = *(v24 + 72);
        if (v25)
        {
          v26 = *v25 + 120 * *(v25 + v10 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v26, 0x18Au) != *(v26 + 12))
          {
            goto LABEL_35;
          }
        }

        v40 = v9 + 16 * v15;
        if (!*(v40 + 56))
        {
LABEL_57:
          LODWORD(v28) = 0;
          if (v11)
          {
            goto LABEL_36;
          }

          goto LABEL_58;
        }

        v41 = *(v40 + 48);
        v42 = 8 * *(v40 + 56);
        while (1)
        {
          v43 = *(*v41 + 72);
          if (v43)
          {
            v44 = *v43 + 120 * *(v43 + v10 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v44, 0x18Au) != *(v44 + 12))
            {
              break;
            }
          }

          v41 += 8;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_57;
          }
        }

LABEL_35:
        v27 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v9, 394, v10, 2, 0);
        v104 = 1;
        v109 = &v104;
        v28 = (v27 * v27);
        std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 1)[4] = v28 << 32;
        v9 = v105[3];
        v11 = *v9;
        if (*v9)
        {
LABEL_36:
          v29 = *v11;
          v30 = *v11 == 1.0;
          if (*(v9 + 10) == 1 && v29 != 0.0 && v29 != 1.0)
          {
LABEL_43:
            v33 = *(v9 + 16);
            if (v33)
            {
              v34 = *(v33 + 72);
              if (v34)
              {
                v35 = *v34 + 120 * *(v34 + v10 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v35, 0x18Bu) != *(v35 + 12))
                {
                  goto LABEL_63;
                }
              }

              if (*(v9 + 56))
              {
                v36 = *(v9 + 48);
                v37 = 8 * *(v9 + 56);
                v32 = 1;
                while (1)
                {
                  v38 = *(*v36 + 72);
                  if (v38)
                  {
                    v39 = *v38 + 120 * *(v38 + v10 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v39, 0x18Bu) != *(v39 + 12))
                    {
                      goto LABEL_63;
                    }
                  }

                  v36 += 8;
                  v37 -= 8;
                  if (!v37)
                  {
                    goto LABEL_60;
                  }
                }
              }
            }

            v32 = 1;
LABEL_60:
            v45 = *(v9 + 16 * v32 + 16);
            if (!v45)
            {
              goto LABEL_67;
            }

            v46 = *(v45 + 72);
            if (!v46 || (v47 = *v46 + 120 * *(v46 + v10 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v47, 0x18Bu) == *(v47 + 12)))
            {
              v62 = v9 + 16 * v32;
              if (!*(v62 + 56))
              {
                goto LABEL_67;
              }

              v63 = *(v62 + 48);
              v64 = 8 * *(v62 + 56);
              while (1)
              {
                v65 = *(*v63 + 72);
                if (v65)
                {
                  v66 = *v65 + 120 * *(v65 + v10 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v66, 0x18Bu) != *(v66 + 12))
                  {
                    break;
                  }
                }

                v63 += 8;
                v64 -= 8;
                if (!v64)
                {
                  goto LABEL_67;
                }
              }
            }

LABEL_63:
            v48 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v9, 395, v10, 2, 0);
            v104 = 2;
            v109 = &v104;
            v49 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 2);
            v50 = v28;
            if (v28 <= v48 * v48)
            {
              v28 = (v48 * v48);
            }

            else
            {
              v28 = v28;
            }

            v49[4] = v50 | (v28 << 32);
            v9 = v105[3];
            v11 = *v9;
LABEL_67:
            if (v11)
            {
              v51 = *v11;
              v52 = *v11 == 1.0;
              if (*(v9 + 10) == 1 && v51 != 0.0 && v51 != 1.0)
              {
LABEL_75:
                v55 = *(v9 + 16);
                if (v55)
                {
                  v56 = *(v55 + 72);
                  if (v56)
                  {
                    v57 = *v56 + 120 * *(v56 + v10 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v57, 0x18Cu) != *(v57 + 12))
                    {
                      goto LABEL_94;
                    }
                  }

                  if (*(v9 + 56))
                  {
                    v58 = *(v9 + 48);
                    v59 = 8 * *(v9 + 56);
                    while (1)
                    {
                      v60 = *(*v58 + 72);
                      if (v60)
                      {
                        v61 = *v60 + 120 * *(v60 + v10 + 16);
                        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v61, 0x18Cu) != *(v61 + 12))
                        {
                          goto LABEL_94;
                        }
                      }

                      v58 += 8;
                      v54 = 1;
                      v59 -= 8;
                      if (!v59)
                      {
                        goto LABEL_91;
                      }
                    }
                  }
                }

                v54 = 1;
LABEL_91:
                v67 = *(v9 + 16 * v54 + 16);
                if (!v67)
                {
                  goto LABEL_98;
                }

                v68 = *(v67 + 72);
                if (!v68 || (v69 = *v68 + 120 * *(v68 + v10 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v69, 0x18Cu) == *(v69 + 12)))
                {
                  v96 = v9 + 16 * v54;
                  if (!*(v96 + 56))
                  {
                    goto LABEL_98;
                  }

                  v97 = *(v96 + 48);
                  v98 = 8 * *(v96 + 56);
                  while (1)
                  {
                    v99 = *(*v97 + 72);
                    if (v99)
                    {
                      v100 = *v99 + 120 * *(v99 + v10 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v100, 0x18Cu) != *(v100 + 12))
                      {
                        break;
                      }
                    }

                    v97 += 8;
                    v98 -= 8;
                    if (!v98)
                    {
                      goto LABEL_98;
                    }
                  }
                }

LABEL_94:
                v70 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v9, 396, v10, 2, 0);
                v104 = 3;
                v109 = &v104;
                v71 = std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 3);
                v72 = v28;
                if (v28 <= v70 * v70)
                {
                  v28 = (v70 * v70);
                }

                else
                {
                  v28 = v28;
                }

                v71[4] = v72 | (v28 << 32);
LABEL_98:
                v104 = 0;
                v109 = &v104;
                std::__tree<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,std::__map_value_compare<gss::FlexSelectionZone,std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>,md::FlexSelectionZoneLessThan,true>,std::allocator<std::__value_type<gss::FlexSelectionZone,gm::Range<unsigned int>>>>::__emplace_unique_key_args<gss::FlexSelectionZone,std::piecewise_construct_t const&,std::tuple<gss::FlexSelectionZone&&>,std::tuple<>>(&v101, 0)[4] = v28 | 0xFFFFFFFF00000000;
                if (v108)
                {
                  (*(*v105 + 56))(v105);
                }

                goto LABEL_100;
              }
            }

            else
            {
              v52 = 0;
            }

            v54 = *(v9 + v52 + 11);
            if (v54 != 2)
            {
              goto LABEL_91;
            }

            goto LABEL_75;
          }

LABEL_42:
          v32 = *(v9 + v30 + 11);
          if (v32 != 2)
          {
            goto LABEL_60;
          }

          goto LABEL_43;
        }

LABEL_58:
        v30 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = *(v9 + v13 + 11);
    if (v15 != 2)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  return 0;
}