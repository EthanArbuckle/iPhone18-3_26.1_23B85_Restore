@interface VKSceneConfiguration
- (VKSceneConfiguration)initWithTaskContext:(const void *)context;
- (id).cxx_construct;
- (id)setStyleManager:;
- (shared_ptr<gss::ClientStyleState<gss::ScenePropertyID>>)sceneClientStyleState;
- (shared_ptr<gss::StylesheetManager<gss::PropertyID>>)styleManager;
- (unint64_t)navCameraMode;
- (unint64_t)navigationDestination;
- (void)_updateStyleManager;
- (void)applyStyleAttributeKeyValue:(unsigned int)value withValue:(unsigned int)withValue withCoordinateRange:(GEOPolylineCoordinateRange)range;
- (void)removeStyleAttributeKey:(unsigned int)key;
- (void)resetState;
- (void)setCurrentGroupedManeuverCount:(unint64_t)count;
- (void)setCurrentIncidentType:(unint64_t)type;
- (void)setCurrentManeuverJunctionsCount:(unint64_t)count;
- (void)setCurrentManeuverType:(int)type;
- (void)setCurrentRoadComplexity:(unsigned int)complexity;
- (void)setCurrentStepLength:(double)length;
- (void)setCurrentTransitManeuverType:(int)type;
- (void)setCurrentTransportationType:(int)type;
- (void)setDistanceToCurrentManeuver:(double)maneuver;
- (void)setDistanceToCurrentTrafficSection:(double)section;
- (void)setLaneCount:(unsigned int)count;
- (void)setLineType:(unsigned int)type;
- (void)setNavCameraMode:(unint64_t)mode;
- (void)setNavigationDestination:(unint64_t)destination;
- (void)setNavigationState:(int)state;
- (void)setNextManeuverRampType:(int)type;
- (void)setNextRoadComplexity:(unsigned int)complexity;
- (void)setNextStepLength:(double)length;
- (void)setRampType:(int)type;
- (void)setRoadSpeed:(double)speed;
- (void)setSceneClientStyleState:(shared_ptr<gss::ClientStyleState<gss::ScenePropertyID>>)state;
- (void)setSearchAlongTheRoute:(BOOL)route;
- (void)setSinuosity:(double)sinuosity;
- (void)setStyleManager:;
- (void)setStyleManager:(shared_ptr<gss::StylesheetManager<gss::PropertyID>>)manager;
- (void)setTrafficColor:(unint64_t)color;
- (void)setVehicleSpeed:(double)speed;
@end

@implementation VKSceneConfiguration

- (id).cxx_construct
{
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 7) = 0;
  *(self + 68) = 1065353216;
  *(self + 35) = 0;
  *(self + 36) = 0;
  return self;
}

- (void)resetState
{
  *&self->_navState = 0;
  *&self->_lineType = 0;
  self->_nextManeuverRampType = 0;
  *&self->_currentManeuverType = 0;
  self->_currentGroupedManeuverCount = 0;
  self->_distanceToDestination = 0.0;
  self->_transportType = 4;
  *&self->_searchAlongTheRoute = 0;
  self->_roadSpeed = 0;
  *&self->_cameraMode = 0;
  *&self->_roadComplexity = 0;
  self->_roadSpeedZeroes = 0;
  *&self->_distanceToCurrentTrafficSection = 1032;
  *&self->_currentTransitManeuver = 0;
  self->_laneCount = 0;
  if (self->_sceneClientStyleState.__ptr_)
  {
    for (i = self->_styleAttributeCoordinateRanges.__table_.__first_node_.__next_; i; i = *i)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(self->_sceneClientStyleState.__ptr_, i[4]);
    }

    if (self->_styleAttributeCoordinateRanges.__table_.__size_)
    {
      next = self->_styleAttributeCoordinateRanges.__table_.__first_node_.__next_;
      if (next)
      {
        do
        {
          v5 = *next;
          operator delete(next);
          next = v5;
        }

        while (v5);
      }

      self->_styleAttributeCoordinateRanges.__table_.__first_node_.__next_ = 0;
      size = self->_styleAttributeCoordinateRanges.__table_.__bucket_list_.__deleter_.__size_;
      if (size)
      {
        for (j = 0; j != size; ++j)
        {
          self->_styleAttributeCoordinateRanges.__table_.__bucket_list_.__ptr_[j] = 0;
        }
      }

      self->_styleAttributeCoordinateRanges.__table_.__size_ = 0;
    }
  }

  [(VKSceneConfiguration *)self _updateStyleManager];
}

- (void)_updateStyleManager
{
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1001Du, self->_navState);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x1001Eu, self->_distanceToCurrentManeuver);
    v4 = self->_currentManeuverType - 1;
    if (v4 > 0x57)
    {
      v5 = 0;
    }

    else
    {
      v5 = byte_1B33B2A8A[v4];
    }

    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10026u, v5);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x1003Eu, self->_currentStepLength);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10027u, self->_nextStepLength);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10028u, self->_currentIncidentType);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10029u, self->_currentManeuverComplexity);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 1u, LOWORD(self->_lineType));
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x15u, LOWORD(self->_rampType));
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x1003Bu, LOWORD(self->_nextManeuverRampType));
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10010u, self->_transportType);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10031u, self->_searchAlongTheRoute);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10032u, self->_vehicleSpeed);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10039u, self->_roadSpeed);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10034u, self->_cameraMode);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10040u, self->_navigationDestination);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10055u, LOWORD(self->_roadComplexity));
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10061u, LOWORD(self->_nextRoadComplexity));
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x1005Du, self->_distanceToCurrentTrafficSection);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x1005Eu, self->_currentTrafficState);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10062u, self->_currentTransitManeuver);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(self->_sceneClientStyleState.__ptr_, 0x10063u, self->_routeSinuosity);
    if (self->_currentGroupedManeuverCount >= 5)
    {
      LODWORD(currentGroupedManeuverCount) = 5;
    }

    else
    {
      currentGroupedManeuverCount = self->_currentGroupedManeuverCount;
    }

    v7 = self->_sceneClientStyleState.__ptr_;

    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(v7, 0x1002Au, currentGroupedManeuverCount);
  }
}

- (unint64_t)navCameraMode
{
  if (self->_cameraMode - 1 < 3)
  {
    return (self->_cameraMode - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (shared_ptr<gss::StylesheetManager<gss::PropertyID>>)styleManager
{
  cntrl = self->_styleManager.__cntrl_;
  *v2 = self->_styleManager.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)removeStyleAttributeKey:(unsigned int)key
{
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(ptr, key);
  }

  size = self->_styleAttributeCoordinateRanges.__table_.__bucket_list_.__deleter_.__size_;
  if (size)
  {
    v7 = vcnt_s8(size);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      keyCopy = key;
      if (size <= key)
      {
        keyCopy = key % size;
      }
    }

    else
    {
      keyCopy = (size - 1) & key;
    }

    v9 = self->_styleAttributeCoordinateRanges.__table_.__bucket_list_.__ptr_;
    v10 = v9[keyCopy];
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = size - 1;
        do
        {
          v13 = v11->_sceneClientStyleState.__ptr_;
          if (v13 == key)
          {
            if (LODWORD(v11->_sceneClientStyleState.__cntrl_) == key)
            {
              v14 = v11->_sceneClientStyleState.__ptr_;
              if (v7.u32[0] > 1uLL)
              {
                if (v14 >= size)
                {
                  v14 %= size;
                }
              }

              else
              {
                v14 &= v12;
              }

              isa = v9[v14];
              do
              {
                v16 = isa;
                isa = isa->super.isa;
              }

              while (isa != v11);
              if (v16 == &self->_styleAttributeCoordinateRanges.__table_.__first_node_)
              {
                goto LABEL_38;
              }

              v17 = v16->_sceneClientStyleState.__ptr_;
              if (v7.u32[0] > 1uLL)
              {
                if (v17 >= size)
                {
                  v17 %= size;
                }
              }

              else
              {
                v17 &= v12;
              }

              if (v17 != v14)
              {
LABEL_38:
                if (!v11->super.isa)
                {
                  goto LABEL_39;
                }

                v18 = *(v11->super.isa + 1);
                if (v7.u32[0] > 1uLL)
                {
                  if (v18 >= size)
                  {
                    v18 %= size;
                  }
                }

                else
                {
                  v18 &= v12;
                }

                if (v18 != v14)
                {
LABEL_39:
                  v9[v14] = 0;
                }
              }

              v19 = v11->super.isa;
              if (v11->super.isa)
              {
                v20 = *(v19 + 1);
                if (v7.u32[0] > 1uLL)
                {
                  if (v20 >= size)
                  {
                    v20 %= size;
                  }
                }

                else
                {
                  v20 &= v12;
                }

                if (v20 != v14)
                {
                  self->_styleAttributeCoordinateRanges.__table_.__bucket_list_.__ptr_[v20] = v16;
                  v19 = v11->super.isa;
                }
              }

              v16->super.isa = v19;
              v11->super.isa = 0;
              --self->_styleAttributeCoordinateRanges.__table_.__size_;

              operator delete(v11);
              return;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= size)
              {
                v13 %= size;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != keyCopy)
            {
              return;
            }
          }

          v11 = v11->super.isa;
        }

        while (v11);
      }
    }
  }
}

- (void)applyStyleAttributeKeyValue:(unsigned int)value withValue:(unsigned int)withValue withCoordinateRange:(GEOPolylineCoordinateRange)range
{
  end = range.end;
  start = range.start;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, value, withValue);
  }

  size = self->_styleAttributeCoordinateRanges.__table_.__bucket_list_.__deleter_.__size_;
  if (!size)
  {
    goto LABEL_20;
  }

  v11 = vcnt_s8(size);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    valueCopy = value;
    if (size <= value)
    {
      valueCopy = value % size;
    }
  }

  else
  {
    valueCopy = (size - 1) & value;
  }

  v13 = self->_styleAttributeCoordinateRanges.__table_.__bucket_list_.__ptr_[valueCopy];
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == value)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= size)
      {
        v15 %= size;
      }
    }

    else
    {
      v15 &= size - 1;
    }

    if (v15 != valueCopy)
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (*(v14 + 4) != value)
  {
    goto LABEL_19;
  }

  *(v14 + 20) = start;
  *(v14 + 28) = end;
}

- (void)setLaneCount:(unsigned int)count
{
  if (self->_laneCount != count)
  {
    self->_laneCount = count;
    ptr = self->_sceneClientStyleState.__ptr_;
    if (ptr)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1006Bu, count);
    }
  }
}

- (void)setSinuosity:(double)sinuosity
{
  if (self->_sinuosityLevels._straight >= sinuosity)
  {
    v3 = 0;
  }

  else if (self->_sinuosityLevels._low >= sinuosity)
  {
    v3 = 1;
  }

  else if (self->_sinuosityLevels._medium >= sinuosity)
  {
    v3 = 2;
  }

  else if (self->_sinuosityLevels._high >= sinuosity)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  if (v3 != self->_routeSinuosity)
  {
    self->_routeSinuosity = v3;
    ptr = self->_sceneClientStyleState.__ptr_;
    if (ptr)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10063u, v3);
    }
  }
}

- (void)setCurrentTransitManeuverType:(int)type
{
  if ((type - 1) > 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = byte_1B33B2AE2[type - 1];
  }

  self->_currentTransitManeuver = v3;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10062u, type);
  }
}

- (void)setTrafficColor:(unint64_t)color
{
  if (color >= 5)
  {
    colorCopy = 0;
  }

  else
  {
    colorCopy = color;
  }

  if (self->_currentTrafficState != colorCopy)
  {
    self->_currentTrafficState = colorCopy;
    ptr = self->_sceneClientStyleState.__ptr_;
    if (ptr)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1005Eu, colorCopy);
    }
  }
}

- (void)setDistanceToCurrentTrafficSection:(double)section
{
  if (self->_distanceRanges._immediate >= section)
  {
    v3 = 1;
  }

  else if (self->_distanceRanges._extremlyNear >= section)
  {
    v3 = 2;
  }

  else if (self->_distanceRanges._veryNear >= section)
  {
    v3 = 3;
  }

  else if (self->_distanceRanges._near >= section)
  {
    v3 = 4;
  }

  else if (self->_distanceRanges._medium >= section)
  {
    v3 = 5;
  }

  else if (self->_distanceRanges._far >= section)
  {
    v3 = 6;
  }

  else if (self->_distanceRanges._veryFar >= section)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  if (self->_distanceToCurrentTrafficSection != v3)
  {
    self->_distanceToCurrentTrafficSection = v3;
    ptr = self->_sceneClientStyleState.__ptr_;
    if (ptr)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1005Du, v3);
    }
  }
}

- (void)setNextRoadComplexity:(unsigned int)complexity
{
  if (self->_nextRoadComplexity != complexity)
  {
    self->_nextRoadComplexity = complexity;
    ptr = self->_sceneClientStyleState.__ptr_;
    if (ptr)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10061u, complexity);
    }
  }
}

- (void)setCurrentRoadComplexity:(unsigned int)complexity
{
  if (self->_roadComplexity != complexity)
  {
    self->_roadComplexity = complexity;
    ptr = self->_sceneClientStyleState.__ptr_;
    if (ptr)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10055u, complexity);
    }
  }
}

- (unint64_t)navigationDestination
{
  navigationDestination = self->_navigationDestination;
  if (navigationDestination == 2)
  {
    return 2;
  }

  else
  {
    return navigationDestination == 1;
  }
}

- (void)setNavigationDestination:(unint64_t)destination
{
  if (destination == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = destination == 1;
  }

  self->_navigationDestination = v3;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10040u, v3);
  }
}

- (void)setNavCameraMode:(unint64_t)mode
{
  if (mode >= 4)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  self->_cameraMode = modeCopy;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10034u, modeCopy);
  }
}

- (void)setRoadSpeed:(double)speed
{
  if (self->_roadSpeed && speed == 0.0)
  {
    roadSpeedZeroes = self->_roadSpeedZeroes;
    if (roadSpeedZeroes <= 9)
    {
      self->_roadSpeedZeroes = roadSpeedZeroes + 1;
      return;
    }

    self->_roadSpeedZeroes = 0;
  }

  if (speed > 0.0 && self->_roadSpeedZeroes)
  {
    self->_roadSpeedZeroes = 0;
  }

  if (speed >= 10.0)
  {
    if (speed < 20.0)
    {
      v4 = 1;
    }

    else if (speed < 30.0)
    {
      v4 = 2;
    }

    else if (speed >= 40.0)
    {
      if (speed >= 50.0)
      {
        if (speed >= 60.0)
        {
          if (speed >= 70.0)
          {
            if (speed >= 80.0)
            {
              if (speed >= 90.0)
              {
                if (speed >= 100.0)
                {
                  if (speed >= 110.0)
                  {
                    if (speed >= 120.0)
                    {
                      if (speed >= 130.0)
                      {
                        if (speed >= 140.0)
                        {
                          if (speed >= 150.0)
                          {
                            if (speed >= 160.0)
                            {
                              v4 = 16 * (speed >= 160.0);
                            }

                            else
                            {
                              v4 = 15;
                            }
                          }

                          else
                          {
                            v4 = 14;
                          }
                        }

                        else
                        {
                          v4 = 13;
                        }
                      }

                      else
                      {
                        v4 = 12;
                      }
                    }

                    else
                    {
                      v4 = 11;
                    }
                  }

                  else
                  {
                    v4 = 10;
                  }
                }

                else
                {
                  v4 = 9;
                }
              }

              else
              {
                v4 = 8;
              }
            }

            else
            {
              v4 = 7;
            }
          }

          else
          {
            v4 = 6;
          }
        }

        else
        {
          v4 = 5;
        }
      }

      else
      {
        v4 = 4;
      }
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  self->_roadSpeed = v4;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10039u, v4);
  }
}

- (void)setVehicleSpeed:(double)speed
{
  if (speed >= 0.0)
  {
    if (speed >= 20.0)
    {
      if (speed < 40.0)
      {
        v3 = 2;
      }

      else if (speed >= 60.0)
      {
        if (speed >= 80.0)
        {
          if (speed >= 100.0)
          {
            if (speed >= 120.0)
            {
              if (speed >= 140.0)
              {
                if (speed >= 160.0)
                {
                  v3 = 9;
                }

                else
                {
                  v3 = 8;
                }
              }

              else
              {
                v3 = 7;
              }
            }

            else
            {
              v3 = 6;
            }
          }

          else
          {
            v3 = 5;
          }
        }

        else
        {
          v3 = 4;
        }
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  self->_vehicleSpeed = v3;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10032u, v3);
  }
}

- (void)setSearchAlongTheRoute:(BOOL)route
{
  self->_searchAlongTheRoute = route;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10031u, route);
  }
}

- (void)setCurrentTransportationType:(int)type
{
  v3 = 0x50403020100uLL >> (8 * type);
  if (type >= 7)
  {
    LOBYTE(v3) = 4;
  }

  self->_transportType = v3;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10010u, v3);
  }
}

- (void)setNextManeuverRampType:(int)type
{
  self->_nextManeuverRampType = type;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1003Bu, type);
  }
}

- (void)setRampType:(int)type
{
  self->_rampType = type;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x15u, type);
  }
}

- (void)setLineType:(unsigned int)type
{
  if (type)
  {
    self->_lineType = type;
    ptr = self->_sceneClientStyleState.__ptr_;
    if (ptr)
    {
      gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 1u, type);
    }
  }
}

- (void)setCurrentGroupedManeuverCount:(unint64_t)count
{
  self->_currentGroupedManeuverCount = count;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    if (count >= 5)
    {
      LODWORD(count) = 5;
    }

    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1002Au, count);
  }
}

- (void)setCurrentManeuverJunctionsCount:(unint64_t)count
{
  {
    gssCurrentManeuverComplexityFromNumberOfJunctions(long)::$_0::operator() const(void)::cached_result = GEOConfigGetInteger();
  }

  v5 = gssCurrentManeuverComplexityFromNumberOfJunctions(long)::$_0::operator() const(void)::cached_result;
  self->_currentManeuverComplexity = gssCurrentManeuverComplexityFromNumberOfJunctions(long)::$_0::operator() const(void)::cached_result <= count;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {

    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10029u, v5 <= count);
  }
}

- (void)setCurrentIncidentType:(unint64_t)type
{
  if (type >= 5)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = type;
  }

  self->_currentIncidentType = typeCopy;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10028u, typeCopy);
  }
}

- (void)setNextStepLength:(double)length
{
  if (self->_distanceRanges._immediate >= length)
  {
    v3 = 1;
  }

  else if (self->_distanceRanges._extremlyNear >= length)
  {
    v3 = 2;
  }

  else if (self->_distanceRanges._veryNear >= length)
  {
    v3 = 3;
  }

  else if (self->_distanceRanges._near >= length)
  {
    v3 = 4;
  }

  else if (self->_distanceRanges._medium >= length)
  {
    v3 = 5;
  }

  else if (self->_distanceRanges._far >= length)
  {
    v3 = 6;
  }

  else if (self->_distanceRanges._veryFar >= length)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  self->_nextStepLength = v3;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10027u, v3);
  }
}

- (void)setCurrentStepLength:(double)length
{
  if (self->_distanceRanges._immediate >= length)
  {
    v3 = 1;
  }

  else if (self->_distanceRanges._extremlyNear >= length)
  {
    v3 = 2;
  }

  else if (self->_distanceRanges._veryNear >= length)
  {
    v3 = 3;
  }

  else if (self->_distanceRanges._near >= length)
  {
    v3 = 4;
  }

  else if (self->_distanceRanges._medium >= length)
  {
    v3 = 5;
  }

  else if (self->_distanceRanges._far >= length)
  {
    v3 = 6;
  }

  else if (self->_distanceRanges._veryFar >= length)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  self->_currentStepLength = v3;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1003Eu, v3);
  }
}

- (void)setCurrentManeuverType:(int)type
{
  self->_currentManeuverType = type;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    if ((type - 1) > 0x57)
    {
      v4 = 0;
    }

    else
    {
      v4 = byte_1B33B2A8A[type - 1];
    }

    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x10026u, v4);
  }
}

- (void)setDistanceToCurrentManeuver:(double)maneuver
{
  distanceToCurrentManeuver = self->_distanceToCurrentManeuver;
  {
    GEOConfigGetDouble();
    gssDistanceToCurrentManeuverFromDistance(double,DistancesRange const&,gss::DistanceToCurrentManeuver)::$_0::operator() const(void)::cached_result = v14;
  }

  if (self->_distanceRanges._immediate >= maneuver)
  {
    v12 = 1;
    goto LABEL_16;
  }

  extremlyNear = self->_distanceRanges._extremlyNear;
  if (extremlyNear >= maneuver)
  {
    goto LABEL_15;
  }

  veryNear = self->_distanceRanges._veryNear;
  if (veryNear >= maneuver)
  {
    v12 = 3;
    if (distanceToCurrentManeuver != 2 || extremlyNear + *&gssDistanceToCurrentManeuverFromDistance(double,DistancesRange const&,gss::DistanceToCurrentManeuver)::$_0::operator() const(void)::cached_result >= maneuver)
    {
      goto LABEL_16;
    }

LABEL_15:
    v12 = 2;
    goto LABEL_16;
  }

  near = self->_distanceRanges._near;
  if (near >= maneuver)
  {
    v12 = 4;
    if (distanceToCurrentManeuver == 3 && veryNear + *&gssDistanceToCurrentManeuverFromDistance(double,DistancesRange const&,gss::DistanceToCurrentManeuver)::$_0::operator() const(void)::cached_result < maneuver)
    {
      v12 = 3;
    }
  }

  else
  {
    medium = self->_distanceRanges._medium;
    if (medium >= maneuver)
    {
      v12 = 5;
      if (distanceToCurrentManeuver == 4 && near + *&gssDistanceToCurrentManeuverFromDistance(double,DistancesRange const&,gss::DistanceToCurrentManeuver)::$_0::operator() const(void)::cached_result < maneuver)
      {
        v12 = 4;
      }
    }

    else
    {
      far = self->_distanceRanges._far;
      if (far >= maneuver)
      {
        v12 = 6;
        if (distanceToCurrentManeuver == 5 && medium + *&gssDistanceToCurrentManeuverFromDistance(double,DistancesRange const&,gss::DistanceToCurrentManeuver)::$_0::operator() const(void)::cached_result < maneuver)
        {
          v12 = 5;
        }
      }

      else
      {
        veryFar = self->_distanceRanges._veryFar;
        if (veryFar >= maneuver)
        {
          v12 = 7;
          if (distanceToCurrentManeuver == 6 && far + *&gssDistanceToCurrentManeuverFromDistance(double,DistancesRange const&,gss::DistanceToCurrentManeuver)::$_0::operator() const(void)::cached_result < maneuver)
          {
            v12 = 6;
          }
        }

        else if (distanceToCurrentManeuver == 7 && veryFar + *&gssDistanceToCurrentManeuverFromDistance(double,DistancesRange const&,gss::DistanceToCurrentManeuver)::$_0::operator() const(void)::cached_result < maneuver)
        {
          v12 = 7;
        }

        else
        {
          v12 = 8;
        }
      }
    }
  }

LABEL_16:
  self->_distanceToCurrentManeuver = v12;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {

    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1001Eu, v12);
  }
}

- (void)setNavigationState:(int)state
{
  if ((state - 1) >= 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x107060504030201uLL >> (8 * (state - 1));
  }

  self->_navState = v3;
  ptr = self->_sceneClientStyleState.__ptr_;
  if (ptr)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(ptr, 0x1001Du, v3);
  }
}

- (void)setStyleManager:(shared_ptr<gss::StylesheetManager<gss::PropertyID>>)manager
{
  v9[4] = *MEMORY[0x1E69E9840];
  ptr = *manager.__ptr_;
  v5 = *(manager.__ptr_ + 1);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_styleManager.__cntrl_;
  self->_styleManager.__ptr_ = ptr;
  self->_styleManager.__cntrl_ = v5;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    ptr = self->_styleManager.__ptr_;
  }

  if (ptr)
  {
    selfCopy = self;
    v8 = self->_styleManager.__ptr_;
    v9[0] = &unk_1F29E3978;
    v9[1] = selfCopy;
    v9[3] = v9;
    gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(v8, v9);
    std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100](v9);
  }
}

- (void)setStyleManager:
{

  JUMPOUT(0x1B8C62190);
}

- (id)setStyleManager:
{
  *a2 = &unk_1F29E3978;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (shared_ptr<gss::ClientStyleState<gss::ScenePropertyID>>)sceneClientStyleState
{
  cntrl = self->_sceneClientStyleState.__cntrl_;
  *v2 = self->_sceneClientStyleState.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setSceneClientStyleState:(shared_ptr<gss::ClientStyleState<gss::ScenePropertyID>>)state
{
  v5 = *state.__ptr_;
  v4 = *(state.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_sceneClientStyleState.__cntrl_;
  self->_sceneClientStyleState.__ptr_ = v5;
  self->_sceneClientStyleState.__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }

  [(VKSceneConfiguration *)self _updateStyleManager];
}

- (VKSceneConfiguration)initWithTaskContext:(const void *)context
{
  v10.receiver = self;
  v10.super_class = VKSceneConfiguration;
  v4 = [(VKSceneConfiguration *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v7 = *context;
    v6 = *(context + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_taskContext.__cntrl_;
    v5->_taskContext.__ptr_ = v7;
    v5->_taskContext.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    [(VKSceneConfiguration *)v5 resetState];
    *&v5->_distanceRanges._immediate = xmmword_1B33B05F0;
    *&v5->_distanceRanges._veryNear = xmmword_1B33B0600;
    *&v5->_distanceRanges._medium = xmmword_1B33B0610;
    *&v5->_distanceRanges._veryFar = xmmword_1B33B0620;
    *&v5->_sinuosityLevels._low = xmmword_1B33B0630;
    v5->_sinuosityLevels._high = 2.0;
  }

  return v5;
}

@end