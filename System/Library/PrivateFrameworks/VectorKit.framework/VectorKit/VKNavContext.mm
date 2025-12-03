@interface VKNavContext
- (DebugTreeNode)_createDebugNode;
- (VKNavContext)init;
- (id).cxx_construct;
- (unint64_t)groupedManeuverCount;
- (void)_notifyObserversStateChanged;
- (void)addPointToFrame:(id)frame ofType:(unint64_t)type;
- (void)addRouteToFrame:(id)frame divergenceCoord:(PolylineCoordinate)coord convergenceCoord:(PolylineCoordinate)convergenceCoord;
- (void)clearPointsToFrameOfType:(unint64_t)type;
- (void)enumerateAdditionalRoutesToFrameUsingBlock:(id)block;
- (void)enumeratePointsToFrameOfType:(unint64_t)type usingBlock:(id)block;
- (void)enumeratePointsToFrameUsingBlock:(id)block;
- (void)setCurrentStepIndex:(unint64_t)index;
- (void)setDebugFlags:(unint64_t)flags;
- (void)setNavigationCameraHeadingOverride:(unint64_t)override;
- (void)setRouteMatch:(id)match;
- (void)updateWithNewRoute:(id)route currentStepIndex:(unint64_t)index;
@end

@implementation VKNavContext

- (void)_notifyObserversStateChanged
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) navContextStateDidChange:{self, v7}];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (DebugTreeNode)_createDebugNode
{
  v2 = v1;
  std::string::basic_string[abi:nn200100]<0>(&v44, "Nav Context");
  gdc::DebugTreeNode::DebugTreeNode(retstr, &v44);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  route = [v2 route];
  std::string::basic_string[abi:nn200100]<0>(&__p, "Route");
  ChildNode = gdc::DebugTreeNode::createChildNode(retstr, &__p);
  gdc::DebugTreeNode::DebugTreeNode(&v44, ChildNode);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Route");
  gdc::DebugTreeValue::DebugTreeValue(v41, route != 0);
  gdc::DebugTreeNode::addProperty(&v44, &__p, v41);
  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!route)
    {
      goto LABEL_23;
    }
  }

  else if (!route)
  {
    goto LABEL_23;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Steps");
  gdc::DebugTreeValue::DebugTreeValue(v38, [route stepsCount]);
  gdc::DebugTreeNode::addProperty(&v44, &__p, v38);
  if (v40 < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Current Step");
  gdc::DebugTreeValue::DebugTreeValue(v35, [v2 currentStepIndex]);
  gdc::DebugTreeNode::addProperty(&v44, &__p, v35);
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Grouped Maneuvers");
  gdc::DebugTreeValue::DebugTreeValue(v32, [v2 groupedManeuverCount]);
  gdc::DebugTreeNode::addProperty(&v44, &__p, v32);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_23:
  std::string::basic_string[abi:nn200100]<0>(&v15, "RouteMatch");
  v6 = gdc::DebugTreeNode::createChildNode(retstr, &v15);
  gdc::DebugTreeNode::DebugTreeNode(&__p, v6);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  routeMatch = [v2 routeMatch];
  std::string::basic_string[abi:nn200100]<0>(&v15, "RouteMatch");
  gdc::DebugTreeValue::DebugTreeValue(v24, routeMatch != 0);
  gdc::DebugTreeNode::addProperty(&__p, &v15, v24);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
    if (!routeMatch)
    {
      goto LABEL_39;
    }
  }

  else if (!routeMatch)
  {
    goto LABEL_39;
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, "isGoodMatch");
  gdc::DebugTreeValue::DebugTreeValue(v21, [routeMatch isGoodMatch]);
  gdc::DebugTreeNode::addProperty(&__p, &v15, v21);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, "Step");
  gdc::DebugTreeValue::DebugTreeValue(v18, [routeMatch stepIndex]);
  gdc::DebugTreeNode::addProperty(&__p, &v15, v18);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

LABEL_39:
  *&v15 = 0;
  *(&v15 + 1) = &v15;
  v16 = 0x2020000000;
  v17 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __39__VKNavContext_Debug___createDebugNode__block_invoke;
  v14[3] = &unk_1E7B31F50;
  v14[4] = &v15;
  [v2 enumerateAdditionalRoutesToFrameUsingBlock:v14];
  std::string::basic_string[abi:nn200100]<0>(v12, "Alternate Route Count");
  gdc::DebugTreeValue::DebugTreeValue(v9, *(*(&v15 + 1) + 24));
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, v12, v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  _Block_object_dispose(&v15, 8);

  *&v15 = &v31;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v15);
  *&v15 = &v30;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v15);
  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v48;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
  __p.__r_.__value_.__r.__words[0] = &v47;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (v46 < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)setDebugFlags:(unint64_t)flags
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_debugFlags != flags)
  {
    self->_debugFlags = flags;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) navContextDebugFlagsDidChange:{self, v8}];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)enumerateAdditionalRoutesToFrameUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    begin = self->_additionalRoutesToFrame.__begin_;
    for (i = self->_additionalRoutesToFrame.__end_; begin != i; begin = (begin + 40))
    {
      v6 = *(begin + 1);
      (*(blockCopy + 2))(blockCopy, v6, *(begin + 3), *(begin + 4));
    }
  }
}

- (void)addRouteToFrame:(id)frame divergenceCoord:(PolylineCoordinate)coord convergenceCoord:(PolylineCoordinate)convergenceCoord
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = &unk_1F2A4C308;
  v29 = 0;
  *&v30 = 0xBF80000000000000;
  *(&v30 + 1) = 0xBF80000000000000;
  geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v28, frame);
  *&v30 = coord;
  *(&v30 + 1) = convergenceCoord;
  end = self->_additionalRoutesToFrame.__end_;
  cap = self->_additionalRoutesToFrame.__cap_;
  if (end >= cap)
  {
    begin = self->_additionalRoutesToFrame.__begin_;
    v13 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3);
    if (v13 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v14 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    if (v14 >= 0x333333333333333)
    {
      v16 = 0x666666666666666;
    }

    else
    {
      v16 = v15;
    }

    if (v16)
    {
      if (v16 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = 40 * v13;
    geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((40 * v13), &v28);
    v18 = self->_additionalRoutesToFrame.__begin_;
    v19 = self->_additionalRoutesToFrame.__end_;
    v27 = (40 * v13 - (v19 - v18));
    *(40 * v13 + 0x18) = v30;
    if (v19 != v18)
    {
      v20 = 40 * v13 - 8 * ((v19 - v18) >> 3);
      v21 = v18;
      v22 = v27;
      do
      {
        *v22 = &unk_1F2A4C308;
        *(v22 + 1) = 0;
        v23 = (v22 + 8);
        objc_storeStrong(v23, *(v21 + 1));
        v24 = *(v21 + 1);
        *(v21 + 1) = 0;

        *(v23 + 1) = *(v21 + 24);
        v21 = (v21 + 40);
        v20 += 40;
        v22 = (v23 + 4);
      }

      while (v21 != v19);
      v25 = v18;
      do
      {
        *v18 = &unk_1F2A4C308;

        v18 = (v18 + 40);
        v25 = (v25 + 40);
      }

      while (v18 != v19);
    }

    v11 = (v17 + 40);
    v26 = self->_additionalRoutesToFrame.__begin_;
    self->_additionalRoutesToFrame.__begin_ = v27;
    *&self->_additionalRoutesToFrame.__end_ = (v17 + 40);
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v10 = geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(end, &v28);
    *(v10 + 3) = v30;
    v11 = (v10 + 5);
    self->_additionalRoutesToFrame.__end_ = (v10 + 5);
  }

  self->_additionalRoutesToFrame.__end_ = v11;
  v28 = &unk_1F2A4C308;
}

- (void)setNavigationCameraHeadingOverride:(unint64_t)override
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_navigationCameraHeadingOverride != override)
  {
    self->_navigationCameraHeadingOverride = override;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) navContextCameraHeadingOverrideDidChange:{self, v8}];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)enumeratePointsToFrameUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    begin = self->_pointsToFrame.__begin_;
    for (i = self->_pointsToFrame.__end_; begin != i; begin = (begin + 32))
    {
      blockCopy[2](blockCopy, *(begin + 3), *begin, *(begin + 1), *(begin + 2));
    }
  }
}

- (void)enumeratePointsToFrameOfType:(unint64_t)type usingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    begin = self->_pointsToFrame.__begin_;
    for (i = self->_pointsToFrame.__end_; begin != i; begin = (begin + 32))
    {
      if (*(begin + 3) == type)
      {
        blockCopy[2](*begin, *(begin + 1), *(begin + 2));
      }
    }
  }
}

- (void)addPointToFrame:(id)frame ofType:(unint64_t)type
{
  end = self->_pointsToFrame.__end_;
  cap = self->_pointsToFrame.__cap_;
  if (end >= cap)
  {
    begin = self->_pointsToFrame.__begin_;
    v10 = end - begin;
    v11 = (end - begin) >> 5;
    v12 = v11 + 1;
    if ((v11 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = cap - begin;
    if (v13 >> 4 > v12)
    {
      v12 = v13 >> 4;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v15 = v11;
    v16 = 32 * v11;
    *v16 = frame;
    *(v16 + 24) = type;
    v8 = (32 * v11 + 32);
    v17 = (v16 - 32 * v15);
    memcpy(v17, begin, v10);
    self->_pointsToFrame.__begin_ = v17;
    self->_pointsToFrame.__end_ = v8;
    self->_pointsToFrame.__cap_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = frame;
    v8 = (end + 32);
    *(end + 3) = type;
  }

  self->_pointsToFrame.__end_ = v8;
}

- (void)clearPointsToFrameOfType:(unint64_t)type
{
  begin = self->_pointsToFrame.__begin_;
  end = self->_pointsToFrame.__end_;
  if (begin != end)
  {
    while (*(begin + 3) != type)
    {
      begin = (begin + 32);
      if (begin == end)
      {
        return;
      }
    }

    if (begin != end)
    {
      v5 = (begin + 32);
      if ((begin + 32) != end)
      {
        do
        {
          if (*(v5 + 3) != type)
          {
            v6 = *(v5 + 1);
            *begin = *v5;
            *(begin + 1) = v6;
            begin = (begin + 32);
          }

          v5 = (v5 + 32);
        }

        while (v5 != end);
        end = self->_pointsToFrame.__end_;
      }
    }
  }

  if (begin != end)
  {
    self->_pointsToFrame.__end_ = begin;
  }
}

- (unint64_t)groupedManeuverCount
{
  groupedManeuverCounts = self->_groupedManeuverCounts;
  if (!groupedManeuverCounts)
  {
    return 0;
  }

  currentStepIndex = self->_currentStepIndex;
  if (currentStepIndex >= [(NSArray *)groupedManeuverCounts count])
  {
    return 0;
  }

  v5 = [(NSArray *)self->_groupedManeuverCounts objectAtIndexedSubscript:self->_currentStepIndex];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setCurrentStepIndex:(unint64_t)index
{
  if (self->_currentStepIndex != index)
  {
    self->_currentStepIndex = index;
    [(VKNavContext *)self _notifyObserversStateChanged];
  }
}

- (void)setRouteMatch:(id)match
{
  matchCopy = match;
  if (self->_routeMatch != matchCopy)
  {
    objc_storeStrong(&self->_routeMatch, match);
    [(VKNavContext *)self _notifyObserversStateChanged];
  }
}

- (void)updateWithNewRoute:(id)route currentStepIndex:(unint64_t)index
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    [(VKNavContext *)self clearAdditionalRoutesToFrame];
    routeMatch = self->_routeMatch;
    self->_routeMatch = 0;

    objc_storeStrong(&self->_route, route);
    self->_currentStepIndex = index;
    groupedManeuverCounts = self->_groupedManeuverCounts;
    self->_groupedManeuverCounts = 0;

    [(VKNavContext *)self _notifyObserversStateChanged];
  }
}

- (VKNavContext)init
{
  v8.receiver = self;
  v8.super_class = VKNavContext;
  v2 = [(VKNavContext *)&v8 init];
  v3 = v2;
  if (v2)
  {
    route = v2->_route;
    v2->_route = 0;

    v3->_currentStepIndex = 0;
    v3->_navigationCameraHeadingOverride = 0;
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:1];
    observers = v3->_observers;
    v3->_observers = v5;
  }

  return v3;
}

@end