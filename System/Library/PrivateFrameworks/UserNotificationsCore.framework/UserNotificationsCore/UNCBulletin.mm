@interface UNCBulletin
- (UNCBulletin)initWithBulletinID:(id)d sectionID:(id)iD universalSectionID:(id)sectionID dismissalID:(id)dismissalID date:(id)date title:(id)title subtitle:(id)subtitle message:(id)self0;
- (UNCBulletin)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCBulletin

- (UNCBulletin)initWithBulletinID:(id)d sectionID:(id)iD universalSectionID:(id)sectionID dismissalID:(id)dismissalID date:(id)date title:(id)title subtitle:(id)subtitle message:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  sectionIDCopy = sectionID;
  dismissalIDCopy = dismissalID;
  dateCopy = date;
  titleCopy = title;
  subtitleCopy = subtitle;
  messageCopy = message;
  v42.receiver = self;
  v42.super_class = UNCBulletin;
  v24 = [(UNCBulletin *)&v42 init];
  if (v24)
  {
    v25 = [dCopy copy];
    bulletinID = v24->_bulletinID;
    v24->_bulletinID = v25;

    v27 = [iDCopy copy];
    sectionID = v24->_sectionID;
    v24->_sectionID = v27;

    v29 = [sectionIDCopy copy];
    universalSectionID = v24->_universalSectionID;
    v24->_universalSectionID = v29;

    v31 = [dismissalIDCopy copy];
    dismissalID = v24->_dismissalID;
    v24->_dismissalID = v31;

    v33 = [dateCopy copy];
    date = v24->_date;
    v24->_date = v33;

    v35 = [titleCopy copy];
    title = v24->_title;
    v24->_title = v35;

    v37 = [subtitleCopy copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v37;

    v39 = [messageCopy copy];
    message = v24->_message;
    v24->_message = v39;
  }

  return v24;
}

- (id)description
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:self];
  build = [v2 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bulletinID = [(UNCBulletin *)self bulletinID];
  sectionID = [(UNCBulletin *)self sectionID];
  universalSectionID = [(UNCBulletin *)self universalSectionID];
  dismissalID = [(UNCBulletin *)self dismissalID];
  date = [(UNCBulletin *)self date];
  title = [(UNCBulletin *)self title];
  subtitle = [(UNCBulletin *)self subtitle];
  message = [(UNCBulletin *)self message];
  v13 = [v4 initWithBulletinID:bulletinID sectionID:sectionID universalSectionID:universalSectionID dismissalID:dismissalID date:date title:title subtitle:subtitle message:message];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bulletinID = [(UNCBulletin *)self bulletinID];
  [coderCopy encodeObject:bulletinID forKey:@"bulletinID"];

  sectionID = [(UNCBulletin *)self sectionID];
  [coderCopy encodeObject:sectionID forKey:@"sectionID"];

  universalSectionID = [(UNCBulletin *)self universalSectionID];
  [coderCopy encodeObject:universalSectionID forKey:@"universalSectionID"];

  date = [(UNCBulletin *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  title = [(UNCBulletin *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(UNCBulletin *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  message = [(UNCBulletin *)self message];
  [coderCopy encodeObject:message forKey:@"message"];
}

- (UNCBulletin)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = UNCBulletin;
  v5 = [(UNCBulletin *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bulletinID"];
    bulletinID = v5->_bulletinID;
    v5->_bulletinID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    sectionID = v5->_sectionID;
    v5->_sectionID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"universalSectionID"];
    universalSectionID = v5->_universalSectionID;
    v5->_universalSectionID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v18;
  }

  return v5;
}

@end