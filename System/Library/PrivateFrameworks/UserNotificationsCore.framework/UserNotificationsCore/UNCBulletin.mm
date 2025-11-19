@interface UNCBulletin
- (UNCBulletin)initWithBulletinID:(id)a3 sectionID:(id)a4 universalSectionID:(id)a5 dismissalID:(id)a6 date:(id)a7 title:(id)a8 subtitle:(id)a9 message:(id)a10;
- (UNCBulletin)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCBulletin

- (UNCBulletin)initWithBulletinID:(id)a3 sectionID:(id)a4 universalSectionID:(id)a5 dismissalID:(id)a6 date:(id)a7 title:(id)a8 subtitle:(id)a9 message:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v42.receiver = self;
  v42.super_class = UNCBulletin;
  v24 = [(UNCBulletin *)&v42 init];
  if (v24)
  {
    v25 = [v16 copy];
    bulletinID = v24->_bulletinID;
    v24->_bulletinID = v25;

    v27 = [v17 copy];
    sectionID = v24->_sectionID;
    v24->_sectionID = v27;

    v29 = [v18 copy];
    universalSectionID = v24->_universalSectionID;
    v24->_universalSectionID = v29;

    v31 = [v19 copy];
    dismissalID = v24->_dismissalID;
    v24->_dismissalID = v31;

    v33 = [v20 copy];
    date = v24->_date;
    v24->_date = v33;

    v35 = [v21 copy];
    title = v24->_title;
    v24->_title = v35;

    v37 = [v22 copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v37;

    v39 = [v23 copy];
    message = v24->_message;
    v24->_message = v39;
  }

  return v24;
}

- (id)description
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:self];
  v3 = [v2 build];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(UNCBulletin *)self bulletinID];
  v6 = [(UNCBulletin *)self sectionID];
  v7 = [(UNCBulletin *)self universalSectionID];
  v8 = [(UNCBulletin *)self dismissalID];
  v9 = [(UNCBulletin *)self date];
  v10 = [(UNCBulletin *)self title];
  v11 = [(UNCBulletin *)self subtitle];
  v12 = [(UNCBulletin *)self message];
  v13 = [v4 initWithBulletinID:v5 sectionID:v6 universalSectionID:v7 dismissalID:v8 date:v9 title:v10 subtitle:v11 message:v12];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCBulletin *)self bulletinID];
  [v4 encodeObject:v5 forKey:@"bulletinID"];

  v6 = [(UNCBulletin *)self sectionID];
  [v4 encodeObject:v6 forKey:@"sectionID"];

  v7 = [(UNCBulletin *)self universalSectionID];
  [v4 encodeObject:v7 forKey:@"universalSectionID"];

  v8 = [(UNCBulletin *)self date];
  [v4 encodeObject:v8 forKey:@"date"];

  v9 = [(UNCBulletin *)self title];
  [v4 encodeObject:v9 forKey:@"title"];

  v10 = [(UNCBulletin *)self subtitle];
  [v4 encodeObject:v10 forKey:@"subtitle"];

  v11 = [(UNCBulletin *)self message];
  [v4 encodeObject:v11 forKey:@"message"];
}

- (UNCBulletin)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = UNCBulletin;
  v5 = [(UNCBulletin *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bulletinID"];
    bulletinID = v5->_bulletinID;
    v5->_bulletinID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
    sectionID = v5->_sectionID;
    v5->_sectionID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"universalSectionID"];
    universalSectionID = v5->_universalSectionID;
    v5->_universalSectionID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    message = v5->_message;
    v5->_message = v18;
  }

  return v5;
}

@end