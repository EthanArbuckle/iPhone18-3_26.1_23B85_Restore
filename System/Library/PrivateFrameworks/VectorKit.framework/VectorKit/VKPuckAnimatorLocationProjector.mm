@interface VKPuckAnimatorLocationProjector
- ($F24F406B2B787EFB06265DBA3D28CBD5)projectedLocation;
- (Matrix<double,)projectedPosition;
- (VKPuckAnimatorLocationProjector)init;
- (id).cxx_construct;
- (id)detailedDescription;
- (optional<double>)elevationInProjectedPostion;
- (optional<std::pair<geo::Mercator3<double>,)currentSnappedSegment;
- (void)_updateCourseAndPositionFromRouteMatch:(id)match;
- (void)dealloc;
- (void)projectFromLocation:(id)location routeMatch:(id)match speedMultiplier:(double)multiplier routeLine:(id)line;
- (void)reset;
@end

@implementation VKPuckAnimatorLocationProjector

- (id).cxx_construct
{
  *(self + 6) = 0xBF80000000000000;
  *(self + 64) = 0;
  *(self + 72) = 0;
  *(self + 88) = 0;
  *(self + 136) = 0;
  *(self + 148) = 0xBF80000000000000;
  return self;
}

- (void)reset
{
  self->_projectedPosition._e[0] = 0.0;
  self->_projectedPosition._e[1] = 0.0;
  self->_projectedPosition._e[2] = 0.0;
  if (self->_elevationInProjectedPosition.__engaged_)
  {
    self->_elevationInProjectedPosition.__engaged_ = 0;
  }

  self->_projectedCourse = -1.0;
  [(VKPuckAnimatorLocationProjector *)self setRouteMatch:0];

  [(VKPuckAnimatorLocationProjector *)self setProjectedRouteMatch:0];
}

- (VKPuckAnimatorLocationProjector)init
{
  v6.receiver = self;
  v6.super_class = VKPuckAnimatorLocationProjector;
  v2 = [(VKPuckAnimatorLocationProjector *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(VKPuckAnimatorLocationProjector *)v2 reset];
    v4 = v3;
  }

  return v3;
}

- (Matrix<double,)projectedPosition
{
  v2 = self->_projectedPosition._e[0];
  v3 = self->_projectedPosition._e[1];
  v4 = self->_projectedPosition._e[2];
  result._e[2] = v4;
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (optional<double>)elevationInProjectedPostion
{
  v2 = *&self->_elevationInProjectedPosition.__engaged_;
  var0 = self->_elevationInProjectedPosition.var0;
  result.__engaged_ = v2;
  result.var0 = var0;
  return result;
}

- (optional<std::pair<geo::Mercator3<double>,)currentSnappedSegment
{
  v3 = *&self[1].__engaged_;
  *&retstr->var0.__null_state_ = *&self[1].var0.__val_.second._e[1];
  *&retstr->var0.__val_.first._e[2] = v3;
  *&retstr->var0.__val_.second._e[1] = *&self[2].var0.__val_.first._e[1];
  *&retstr->__engaged_ = self[2].var0.__val_.second._e[0];
  return self;
}

- (id)detailedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(VKPuckAnimatorLocationProjector *)self description];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  [v5 appendFormat:@"_routeMatch: %@\n", self->_routeMatch];
  [v5 appendFormat:@"_projectedRouteMatch: %@\n", self->_projectedRouteMatch];
  [v5 appendFormat:@"_projectedPosition: %f, %f, %f\n", *&self->_projectedPosition._e[0], *&self->_projectedPosition._e[1], *&self->_projectedPosition._e[2]];
  [v5 appendFormat:@"_projectedCourse: %f\n", *&self->_projectedCourse];
  if (self->_alwaysUseGoodRouteMatch)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"_alwaysUseGoodRouteMatch: %@", v6];

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)projectedLocation
{
  v2 = self->_projectedPosition._e[0] * 6.28318531;
  v3 = exp(self->_projectedPosition._e[1] * 6.28318531 + -3.14159265);
  v4 = atan(v3);
  v5 = fmod(v2, 6.28318531);
  v6 = fmod(v5 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
  v7 = v4 * 114.591559 + -90.0;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

- (void)projectFromLocation:(id)location routeMatch:(id)match speedMultiplier:(double)multiplier routeLine:(id)line
{
  v64 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  matchCopy = match;
  lineCopy = line;
  if (matchCopy && [matchCopy isGoodMatch] && ((objc_msgSend(matchCopy, "shouldProjectLocationAlongRoute") & 1) != 0 || self->_alwaysUseGoodRouteMatch))
  {
    [matchCopy locationCoordinate];
    v14 = v13;
    [matchCopy locationCoordinate];
    v53 = v15;
    v16 = tan(v14 * 0.00872664626 + 0.785398163);
    v17 = log(v16);
    *&v18.f64[0] = v53;
    v18.f64[1] = v17;
    __asm { FMOV            V1.2D, #0.5 }

    *self->_projectedPosition._e = vmlaq_f64(_Q1, xmmword_1B33B0700, v18);
    self->_projectedPosition._e[2] = 0.0;
    [matchCopy matchedCourse];
    self->_projectedCourse = v24;
    [locationCopy speed];
    v26 = v25;
    if (locationCopy)
    {
      [locationCopy clientLocation];
      v27 = v63;
    }

    else
    {
      v27 = 0.0;
    }

    v41 = v26 - v27;
    if (v41 <= 6.7 || (v42 = fmin(v41, 38.0) * 0.0823045267 * (fmin(v41, 31.0) + -6.7) / multiplier, v42 <= 0.0))
    {
      if (!self->_projectedRouteMatch || ![matchCopy routeMatchBehind:?] || (objc_msgSend(matchCopy, "locationCoordinate"), -[GEORouteMatch locationCoordinate](self->_projectedRouteMatch, "locationCoordinate"), GEOCalculateDistance(), v47 >= 10.0))
      {
        [(VKPuckAnimatorLocationProjector *)self setProjectedRouteMatch:matchCopy, v53];
      }
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
      route = [matchCopy route];
      v45 = [route routeMatchAtDistance:matchCopy from:0 stopAtEndOfTunnel:BOOL ^ 1u stopAtEndOfManeuver:0 date:v42];

      if (v45)
      {
        if (self->_projectedRouteMatch && self->_routeMatch && ([matchCopy routeMatchBehind:?] & 1) == 0 && objc_msgSend(v45, "routeMatchBehind:", self->_projectedRouteMatch))
        {
          v46 = self->_projectedRouteMatch;

          v45 = v46;
        }

        [(VKPuckAnimatorLocationProjector *)self setProjectedRouteMatch:v45, v53];
      }

      else
      {
        [(VKPuckAnimatorLocationProjector *)self setProjectedRouteMatch:matchCopy];
      }
    }

    if (GEOPolylineCoordinateIsValid())
    {
      projectedRouteMatch = [(VKPuckAnimatorLocationProjector *)self projectedRouteMatch];
      routeCoordinate = [projectedRouteMatch routeCoordinate];
      index = self->_maxTravelledCoordinate.index;
      v51 = index > routeCoordinate || index == routeCoordinate && self->_maxTravelledCoordinate.offset >= *(&routeCoordinate + 1);
      self->_isProjectedPositionBehind = v51;

      if (self->_isProjectedPositionBehind)
      {
        goto LABEL_40;
      }
    }

    else
    {
      self->_isProjectedPositionBehind = 0;
    }

    projectedRouteMatch2 = [(VKPuckAnimatorLocationProjector *)self projectedRouteMatch];
    self->_maxTravelledCoordinate = [projectedRouteMatch2 routeCoordinate];

LABEL_40:
    [(VKPuckAnimatorLocationProjector *)self setRouteMatch:matchCopy, v53];
    [(VKPuckAnimatorLocationProjector *)self _updateCourseAndPositionFromRouteMatch:lineCopy];
    goto LABEL_41;
  }

  [(VKPuckAnimatorLocationProjector *)self setRouteMatch:0];
  [(VKPuckAnimatorLocationProjector *)self setProjectedRouteMatch:0];
  v28 = MEMORY[0x1E69A1918];
  self->_maxTravelledCoordinate = *MEMORY[0x1E69A1918];
  self->_isProjectedPositionBehind = 1;
  [locationCopy coordinate];
  v30 = v29;
  [locationCopy coordinate];
  v54 = v31;
  v32 = tan(v30 * 0.00872664626 + 0.785398163);
  v33 = log(v32);
  *&v34.f64[0] = v54;
  v34.f64[1] = v33;
  __asm { FMOV            V1.2D, #0.5 }

  *self->_projectedPosition._e = vmlaq_f64(_Q1, xmmword_1B33B0700, v34);
  self->_projectedPosition._e[2] = 0.0;
  if (self->_elevationInProjectedPosition.__engaged_)
  {
    self->_elevationInProjectedPosition.__engaged_ = 0;
  }

  [locationCopy course];
  self->_projectedCourse = v36;
  self->_projectedCoordinate = *v28;
  if (matchCopy)
  {
    if (GEOGetVectorKitVKPuckAnimatorLocationProjectorLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKPuckAnimatorLocationProjectorLog(void)::onceToken, &__block_literal_global_33024);
    }

    v37 = GEOGetVectorKitVKPuckAnimatorLocationProjectorLog(void)::log;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      [matchCopy locationCoordinate3D];
      v39 = v38;
      [matchCopy locationCoordinate3D];
      *buf = 134284289;
      v56 = v39;
      v57 = 2049;
      v58 = v40;
      v59 = 1024;
      isGoodMatch = [matchCopy isGoodMatch];
      v61 = 1024;
      shouldProjectLocationAlongRoute = [matchCopy shouldProjectLocationAlongRoute];
      _os_log_impl(&dword_1B2754000, v37, OS_LOG_TYPE_INFO, "[RouteSnapping] Route was matched at %{private}f, %{private}f but was poor quality, so no snapping occurred. routeMatch.isGoodMatch %d, routeMatch.shouldProjectLocationAlongRoute %d", buf, 0x22u);
    }
  }

LABEL_41:
}

- (void)_updateCourseAndPositionFromRouteMatch:(id)match
{
  matchCopy = match;
  if (matchCopy)
  {
    v5 = +[VKDebugSettings sharedSettings];
    if ([v5 enablePuckRouteLineSnapping])
    {
      [matchCopy snapRouteMatch:self->_projectedRouteMatch];
    }

    else
    {
      LOBYTE(v23) = 0;
      v27 = 0;
    }

    if (v27)
    {
      self->_elevationInProjectedPosition.var0.__val_ = v24;
      self->_elevationInProjectedPosition.__engaged_ = 1;
      *self->_projectedPosition._e = v23;
      self->_projectedPosition._e[2] = v24;
      if (self->_currentSnappedSegment.__engaged_)
      {
        *&self->_currentSnappedSegment.var0.__null_state_ = v25;
        self->_currentSnappedSegment.var0.__val_.first._e[2] = *v26;
        *self->_currentSnappedSegment.var0.__val_.second._e = *&v26[8];
        self->_currentSnappedSegment.var0.__val_.second._e[2] = *&v26[24];
      }

      else
      {
        *&self->_currentSnappedSegment.var0.__null_state_ = v25;
        *&self->_currentSnappedSegment.var0.__val_.first._e[2] = *v26;
        *&self->_currentSnappedSegment.var0.__val_.second._e[1] = *&v26[16];
        self->_currentSnappedSegment.__engaged_ = 1;
      }

      goto LABEL_13;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  route = [(GEORouteMatch *)self->_projectedRouteMatch route];
  [route pointWithAltitudeCorrectionAtRouteCoordinate:{-[GEORouteMatch routeCoordinate](self->_projectedRouteMatch, "routeCoordinate")}];
  self->_elevationInProjectedPosition.var0.__val_ = v7;
  self->_elevationInProjectedPosition.__engaged_ = 1;

  [(GEORouteMatch *)self->_projectedRouteMatch locationCoordinate];
  v9 = v8;
  [(GEORouteMatch *)self->_projectedRouteMatch locationCoordinate];
  v22 = v10;
  if (!self->_elevationInProjectedPosition.__engaged_)
  {
    v21 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v21);
  }

  val = self->_elevationInProjectedPosition.var0.__val_;
  v12 = tan(v9 * 0.00872664626 + 0.785398163);
  v13 = log(v12);
  *&v14.f64[0] = v22;
  v14.f64[1] = v13;
  __asm { FMOV            V1.2D, #0.5 }

  *self->_projectedPosition._e = vmlaq_f64(_Q1, xmmword_1B33B0700, v14);
  self->_projectedPosition._e[2] = val;
  if (self->_currentSnappedSegment.__engaged_)
  {
    self->_currentSnappedSegment.__engaged_ = 0;
  }

LABEL_13:
  [(GEORouteMatch *)self->_projectedRouteMatch matchedCourse:v22];
  self->_projectedCourse = v20;
  self->_projectedCoordinate = [(GEORouteMatch *)self->_projectedRouteMatch routeCoordinate];
}

- (void)dealloc
{
  [(VKPuckAnimatorLocationProjector *)self reset];
  v3.receiver = self;
  v3.super_class = VKPuckAnimatorLocationProjector;
  [(VKPuckAnimatorLocationProjector *)&v3 dealloc];
}

@end